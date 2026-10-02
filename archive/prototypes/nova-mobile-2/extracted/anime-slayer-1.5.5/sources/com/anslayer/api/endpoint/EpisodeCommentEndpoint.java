package com.anslayer.api.endpoint;

import ac.d;
import java.util.List;
import m4.b;
import okhttp3.ResponseBody;
import org.apache.http.client.methods.HttpDelete;
import td.c;
import td.e;
import td.f;
import td.h;
import td.o;
import td.p;
import wc.t;

/* compiled from: EpisodeCommentEndpoint.kt */
/* loaded from: classes.dex */
public interface EpisodeCommentEndpoint {
    @e
    @o("episode-comments/create-episode-comment")
    Object createEpisodeComment(@c("episode_id") long j10, @c("comment_text") String str, @c("spoiler") String str2, d<? super ResponseBody> dVar);

    @e
    @o("episode-comments/create-episode-comment-reply")
    Object createEpisodeCommentReply(@c("episode_comment_id") long j10, @c("reply_text") String str, @c("spoiler") String str2, @c("recipient_id") String str3, @c("notification_type") String str4, d<? super ResponseBody> dVar);

    @e
    @h(hasBody = t.f15537a, method = HttpDelete.METHOD_NAME, path = "episode-comments/delete-episode-comment-reply")
    Object deleteEpisodeCommentReplyV2(@c("episode_comment_reply_id") long j10, d<? super ResponseBody> dVar);

    @e
    @h(hasBody = t.f15537a, method = HttpDelete.METHOD_NAME, path = "episode-comments/delete-episode-comment")
    Object deleteEpisodeCommentV2(@c("episode_comment_id") long j10, d<? super ResponseBody> dVar);

    @e
    @o("episode-comments/episode-comment-reply-dislike")
    Object dislikeEpisodeCommentReplyV2(@c("episode_comment_reply_id") long j10, d<? super n4.c<n4.d<b>>> dVar);

    @e
    @o("episode-comments/episode-comment-dislike")
    Object dislikeEpisodeCommentV2(@c("episode_comment_id") long j10, d<? super n4.c<n4.d<b>>> dVar);

    @e
    @o("episode-comments/episode-comment-reply-flag")
    Object flagEpisodeCommentReplyV2(@c("episode_comment_reply_id") long j10, @c("comment_flag_reason_id") long j11, d<? super n4.c<n4.d<b>>> dVar);

    @e
    @o("episode-comments/episode-comment-flag")
    Object flagEpisodeCommentV2(@c("episode_comment_id") long j10, @c("comment_flag_reason_id") long j11, d<? super n4.c<n4.d<b>>> dVar);

    @f("episode-comments/get-episode-comment-replies")
    rd.b<n4.c<n4.d<List<b>>>> getEpisodeCommentReplies(@td.t("json") String str);

    @f("episode-comments/get-episode-comments")
    rd.b<n4.c<n4.d<List<b>>>> getEpisodeComments(@td.t("json") String str);

    @e
    @o("episode-comments/episode-comment-reply-like")
    Object likeEpisodeCommentReplyV2(@c("episode_comment_reply_id") long j10, d<? super n4.c<n4.d<b>>> dVar);

    @e
    @o("episode-comments/episode-comment-like")
    Object likeEpisodeCommentV2(@c("episode_comment_id") long j10, d<? super n4.c<n4.d<b>>> dVar);

    @e
    @p("episode-comments/update-episode-comment")
    Object updateEpisodeComment(@c("episode_comment_id") long j10, @c("comment_text") String str, @c("spoiler") String str2, d<? super n4.c<n4.d<b>>> dVar);

    @e
    @p("episode-comments/update-episode-comment-reply")
    Object updateEpisodeCommentReply(@c("episode_comment_reply_id") long j10, @c("reply_text") String str, @c("spoiler") String str2, d<? super n4.c<n4.d<b>>> dVar);
}
