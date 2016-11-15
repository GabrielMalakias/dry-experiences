class Blog::Container
  extend Dry::Container::Mixin

  register('commands.article.create') do
    Commands::Article::Create.new
  end
end

AutoInject = Dry::AutoInject(Blog::Container)
