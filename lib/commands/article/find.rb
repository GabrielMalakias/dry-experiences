module Commands
  module Article
    class Find
      def call(id)
        Stoplight('article.find') do
          find(id)
        end.with_fallback do |error|
          fallback(id)
        end.with_error_handler do |error, handle|
          custom_error_handler(error, handle)
        end.run
      end

      private
      def fail?
        Random.rand < 0.5
      end

      def fallback(id)
        ::Article.new(id: id, name: "Fallback", description: "Error happened Fallback response")
      end

      def find(id)
        raise 'Something is going wrong' if fail?
        ::Article.find(id)
      end

      def custom_error_handler(error, handle)
        raise error if error.is_a?(ActiveRecord::RecordNotFound)
        handle.call(error)
      end
    end
  end
end
