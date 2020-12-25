# in src/pages/ai4cr_examples/index_page.cr
class Ai4crExamples::IndexPage < MainLayout
  needs user_names : Array(String)

  def content
    ul class: "my-user-list" do
      user_names.each do |name|
        li name, class: "user-name"
      end
      # li "Some Name", class: "user-name"
    end
  end
end