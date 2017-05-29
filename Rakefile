require 'rake'
require 'fileutils'

desc "Yay! mount my env"
task :install do
  ["vim", "zsh", "tmux"].each do |task|
    Rake::Task[task].execute
  end
end

desc "vim configs"
task :vim do
  puts "install vim config"
  run %{
    ln -nfs $HOME/dev/dotfiles/vim $HOME/.vim
    ln -nfs $HOME/dev/dotfiles/vim/vimrc $HOME/.vimrc
  }

  Rake::Task["vundle"].execute
end

task :vundle do
  puts "intall vundle plugin"
    run %{
      git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/Vundle.vim
    }
    puts "open the vim and execute :BundleInstall to install the bundles."
end

desc "eclim install, requirements: [~/dev/eclim-eclipse, ~/dev/eclim_2.6.0.jar]"
task :eclim do
  puts "installing eclim"
  exec %{ java -Dvim.files=$HOME/.vim -Declipse.home=$HOME/dev/eclim-eclipse -jar $HOME/dev/eclim_2.6.0.jar install }
end

desc "zsh configs"
task :zsh do
  puts "install zsh config"
  run %{
    mkdir -p $HOME/.zsh.prompts
    ln -nfs $HOME/dev/dotfiles/zsh $HOME/.zsh
    ln -nfs $HOME/dev/dotfiles/zsh/zshrc $HOME/.zshrc
  }

  Rake::Task["prezto"].execute

  run %{ chsh -s /usr/bin/zsh }
end

task :prezto do
  run %{
    cd ~/dev/dotfiles/zsh
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
    ln -nfs "$HOME/.zsh/zpreztorc" "${ZDOTDIR:-$HOME}/.zpreztorc"
  }
end

desc "tmux conf"
task :tmux do
  puts "install tmux conf"
  run %{
    ln -nfs $HOME/dev/dotfiles/tmux.conf $HOME/.tmux.conf
  }
end

private

def run(cmd)
  puts "[Running] #{cmd}"
  `#{cmd}` unless ENV['DEBUG']
end
