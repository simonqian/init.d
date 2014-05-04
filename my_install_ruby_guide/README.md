##[如何快速正确的安装 Ruby, Rails 运行环境](http://ruby-china.org/wiki/install_ruby_guide)

###步骤0 － 安装系统需要的包
```
# For Mac 
# 先安装 [Xcode](http://developer.apple.com/xcode/) 开发工具，它将帮你安装好 Unix 环境需要的开发包
# 然后安装 [Homebrew](http://brew.sh)
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
```

###步骤1 － 安装 RVM
```
RVM 是干什么的这里就不解释了，后面你将会慢慢搞明白。

$ curl -L https://get.rvm.io | bash -s stable
期间可能会问你sudo管理员密码，以及自动通过homebrew安装依赖包，等待一段时间后就可以成功安装好 RVM。

然后，载入 RVM 环境（新开 Termal 就不用这么做了，会自动重新载入的）

$ source ~/.rvm/scripts/rvm
检查一下是否安装正确

$ rvm -v
rvm 1.22.17 (stable) by Wayne E. Seguin <wayneeseguin@gmail.com>, Michal Papis <mpapis@gmail.com> [https://rvm.io/]
```

###步骤2 － 用 RVM 安装 Ruby 环境
```
$ rvm install 2.0.0
同样继续等待漫长的下载，编译过程，完成以后，Ruby, Ruby Gems 就安装好了。
```

###步骤3 － 设置 Ruby 版本
```
RVM 装好以后，需要执行下面的命令将指定版本的 Ruby 设置为系统默认版本

$ rvm 2.0.0 --default
同样，也可以用其他版本号，前提是你有用 rvm install 安装过那个版本

这个时候你可以测试是否正确

$ ruby -v
ruby 2.0.0p247 (2013-06-27 revision 41674) [x86_64-darwin13.0.0]

$ gem -v
2.1.6

$ gem source -r https://rubygems.org/
$ gem source -a https://ruby.taobao.org
```

###步骤4 － 安装 Rails 环境
```
上面 3 个步骤过后，Ruby 环境就安装好了，接下来安装 Rails

$ gem install rails
然后测试安装是否正确

$ rails -v
Rails 3.2.13
```

然后开始你的 Ruby，Rails 之旅吧。
欢迎来到 Ruby 的世界！

###步骤5 - Use RVM

`cat use_rvm.sh`
```sh
#!/bin/bash     
##http://ruby-china.org/topics/3705
bash --login
rvm  2.0.0 --default
```

###其他资源
```
https://github.com/huacnlee/init.d - 快速安装生产环境的 Ubuntu Server 批量脚本
```
