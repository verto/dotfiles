require 'rake'
require 'fileutils'

desc "Yay! mount my env"
task :install do
  ["nvim", "zsh", "tmux", "git"].each do |task|
    Rake::Task[task].execute
  end
end

desc "neovim configs"
task :nvim do
  puts "install neovim config"
  run %{
    ln -nfs $HOME/dev/dotfiles/nvim $HOME/.config/nvim
    ln -nfs $HOME/dev/dotfiles/ideavimrc $HOME/.ideavimrc
  }
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

desc "gitconfig"
task :git do
  puts "install git configs"
  run %{
    ln -nfs $HOME/dev/dotfiles/gitconfig $HOME/.gitconfig
    ln -nfs $HOME/dev/dotfiles/gitignore $HOME/.gitignore
    ln -nfs $HOME/dev/dotfiles/fdignore $HOME/.fdignore
  }
end

private

def run(cmd)
  puts "[Running] #{cmd}"
  `#{cmd}` unless ENV['DEBUG']
end
