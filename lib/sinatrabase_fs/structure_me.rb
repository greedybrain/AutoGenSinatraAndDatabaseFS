class SinatrabaseFs::StructureMe

    def gen 
        make_dirs
        make_dir_files
        write_to_app_controllers_app_rb
        write_to_app_models_model_rb
        write_to_app_views_erb_file_erb
        write_to_config_environment_rb
        write_to_config_ru
        write_to_gemfile
        write_to_rakefile
    end

    def make_dirs 
        curr_dir = Dir.pwd
        # root = "/sinatrabase_fs"

        FileUtils.cd(curr_dir) do |dir|
            %w(app app/controllers app/models app/views config public public/css public/images public/js db/migrate spec).each do |directory|
                FileUtils.mkdir_p(directory)
            end
        end
    end

    def make_dir_files 
        %w(app/controllers/app.rb app/models/model.rb app/views/erb_file.erb config/environment.rb spec/test.rb config.ru Gemfile Rakefile README.md).each do |file|
            FileUtils.touch file
        end
    end

    def write_to_app_controllers_app_rb
        FileUtils.cd(Dir.pwd) do |dir|
            file = File.open("app/controllers/app.rb", 'w')
            file.puts "require_relative 'config/environment'\n\nclass App < Sinatra::Base\nend"
            file.close
        end
    end

    def write_to_app_models_model_rb
        FileUtils.cd(Dir.pwd) do |dir|
            file = File.open("app/models/model.rb", 'w')
            file.puts "#WRITE YOUR MODEL HERE"
            file.close
        end
    end

    def write_to_app_views_erb_file_erb
        FileUtils.cd(Dir.pwd) do |dir|
            file = File.open("app/views/erb_file.rb", 'w')
            file.puts "#WRITE YOUR TEMPLATE HERE"
            file.close
        end
    end

    def write_to_app_views_erb_file_erb
        FileUtils.cd(Dir.pwd) do |dir|
            file = File.open("app/views/erb_file.rb", 'w')
            file.puts "#WRITE YOUR TEMPLATE HERE"
            file.close
        end
    end

    def write_to_config_environment_rb
        FileUtils.cd(Dir.pwd) do |dir|
            file = File.open("config/environment.rb", 'w')
            file.puts "ENV['SINATRA_ENV'] ||= \"development\"\n\nrequire 'bundler/setup'\nBundler.require(:default, ENV['SINATRA_ENV'])\n\n# SET CONNECTION TO DATABASE\nconfigure :development do\n\tset :database, 'sqlite3:db/database.db'\nend\n\nrequire './app'"
            file.close
        end
    end

    def write_to_config_ru
        FileUtils.cd(Dir.pwd) do |dir|
            file = File.open("config.ru", 'w')
            file.puts "require './config/environment'\n\nrun App # or whatever the app controller module/class name you want eg. Application"
            file.close
        end
    end

    def write_to_gemfile 
        FileUtils.cd(Dir.pwd) do |dir|
            file = File.open("Gemfile", 'w')
            file.puts "source 'https://rubygems.org'\n\ngem 'sinatra'\ngem 'thin'\ngem 'require_all'\ngem 'activerecord', '5.2'\ngem 'sinatra-activerecord'\ngem 'rake'\n\ngroup :development do\n\tgem 'shotgun'\n\tgem 'pry'\n\tgem 'tux'\n\tgem 'sqlite3', '~> 1.3.6'\nend"
            file.close
        end
    end

    def write_to_rakefile
        FileUtils.cd(Dir.pwd) do |dir|
            file = File.open("Rakefile", 'w')
            file.puts "require \"./config/environment\"\nrequire \"sinatra/activerecord/rake\""
            file.close
        end
    end

end