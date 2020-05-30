require 'rake'
require 'fileutils'

desc "Yay! mount my env"
task :install do
  ["vim", "zsh", "tmux", "fonts"].each do |task|
    Rake::Task[task].execute
  end
end

desc "vim configs"
task :vim do
  puts "install vim config"
  run %{
    ln -nfs $HOME/dev/dotfiles/vim $HOME/.vim
    ln -nfs $HOME/dev/dotfiles/nvim $HOME/.config/nvim
    ln -nfs $HOME/dev/dotfiles/vim/vimrc $HOME/.vimrc
  }
end

desc "Vim Plug"
task :vim_plug do
  puts "intall vim-plug"
  run %{
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  }
  puts "open the vim and execute :PlugInstall to install the bundles."
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

desc "x config"
task :x do
  puts "install x configs"
  run %{
    ln -nfs $HOME/dev/dotfiles/Xresources.hybird $HOME/.Xresources
    ln -nfs $HOME/dev/dotfiles/xinitrc $HOME/.xinitrc
    ln -nfs $HOME/dev/dotfiles/xsession $HOME/.xsession
  }
end

desc "gitconfig"
task :git do
  puts "install git configs"
  run %{
    ln -nfs $HOME/dev/dotfiles/gitconfig $HOME/.gitconfig
  }
end

desc "fonts"
task :fonts do
  puts "install fonts"
  run %{
    sudo cp $HOME/dev/dotfiles/fonts/*.ttf /usr/share/fonts/TTF/
    sudo cp $HOME/dev/dotfiles/fonts/*.otf /usr/share/fonts/OTF/
    fc-cache
  }
end

private

def run(cmd)
  puts "[Running] #{cmd}"
  `#{cmd}` unless ENV['DEBUG']
end
