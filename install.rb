#!/usr/bin/ruby

# system "sh -c \"$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)\""
puts "OK - Install Oh-My-Zsh ..."

def link_value(name)
	system "mv ~/.#{name} ~/.#{name}.old"
	system "ln -s #{__dir__}/#{name} #{ENV['HOME']}/.#{name}"
end
link_value("zshrc")
link_value("vimrc")
link_value("myvimrc")
link_value("alias")
puts "OK - Symlink Created !"

system "cp school42/agnoster.zsh-theme ~/.oh-my-zsh/themes/agnoster.zsh-theme"
puts "OK - Agnoster theme for 42"

system "rm -rf ~/.atom"
system "git clone http://github.com/ale-batt/dotatom ~/.atom"
