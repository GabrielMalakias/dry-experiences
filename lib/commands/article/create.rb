module Commands
  module Article
    class Create
      def call(params)
        ::Article.create(params)
      end
    end
  end
end
