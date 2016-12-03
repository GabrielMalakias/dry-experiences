class Blog::Container
  extend Dry::Container::Mixin

  register('commands.article.create') do
    Commands::Article::Create.new
  end

  register('commands.article.find') do
    Commands::Article::Find.new
  end
end

AutoInject = Dry::AutoInject(Blog::Container)
