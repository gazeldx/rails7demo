require "test_helper"

class CommentsMailerTest < ActionMailer::TestCase
  test "submitted" do
    # post = Post.create(title: 'Post title 1')
    # comment = Comment.create(post: post, content: 'MyText')
    # mail = CommentsMailer.submitted(comment)
    mail = CommentsMailer.submitted(comments(:one))
    assert_equal "New comment!", mail.subject
    assert_equal ["lane@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "MyText", mail.body.encoded
  end

end
