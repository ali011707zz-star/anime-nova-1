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

/* compiled from: SeriesCommentEndpoint.kt */
/* loaded from: classes.dex */
public interface SeriesCommentEndpoint {
    @e
    @o("anime-comments/create-anime-comment")
    Object createSeriesComment(@c("anime_id") long j10, @c("comment_text") String str, @c("spoiler") String str2, d<? super ResponseBody> dVar);

    @e
    @o("anime-comments/create-anime-comment-reply")
    Object createSeriesCommentReply(@c("anime_comment_id") long j10, @c("reply_text") String str, @c("spoiler") String str2, @c("recipient_id") String str3, @c("notification_type") String str4, d<? super ResponseBody> dVar);

    @e
    @h(hasBody = t.f15537a, method = HttpDelete.METHOD_NAME, path = "anime-comments/delete-anime-comment-reply")
    Object deleteSeriesCommentReplyV2(@c("anime_comment_reply_id") long j10, d<? super ResponseBody> dVar);

    @e
    @h(hasBody = t.f15537a, method = HttpDelete.METHOD_NAME, path = "anime-comments/delete-anime-comment")
    Object deleteSeriesCommentV2(@c("anime_comment_id") long j10, d<? super ResponseBody> dVar);

    @e
    @o("anime-comments/anime-comment-reply-dislike")
    Object dislikeSeriesCommentReplyV2(@c("anime_comment_reply_id") long j10, d<? super n4.c<n4.d<b>>> dVar);

    @e
    @o("anime-comments/anime-comment-dislike")
    Object dislikeSeriesCommentV2(@c("anime_comment_id") long j10, d<? super n4.c<n4.d<b>>> dVar);

    @e
    @o("anime-comments/anime-comment-reply-flag")
    Object flagSeriesCommentReplyV2(@c("anime_comment_reply_id") long j10, @c("comment_flag_reason_id") long j11, d<? super n4.c<n4.d<b>>> dVar);

    @e
    @o("anime-comments/anime-comment-flag")
    Object flagSeriesCommentV2(@c("anime_comment_id") long j10, @c("comment_flag_reason_id") long j11, d<? super n4.c<n4.d<b>>> dVar);

    @f("anime-comments/get-anime-comment-replies")
    rd.b<n4.c<n4.d<List<b>>>> getSeriesCommentReplies(@td.t("json") String str);

    @f("anime-comments/get-anime-comments")
    rd.b<n4.c<n4.d<List<b>>>> getSeriesComments(@td.t("json") String str);

    @e
    @o("anime-comments/anime-comment-reply-like")
    Object likeSeriesCommentReplyV2(@c("anime_comment_reply_id") long j10, d<? super n4.c<n4.d<b>>> dVar);

    @e
    @o("anime-comments/anime-comment-like")
    Object likeSeriesCommentV2(@c("anime_comment_id") long j10, d<? super n4.c<n4.d<b>>> dVar);

    @e
    @p("anime-comments/update-anime-comment")
    Object updateSeriesComment(@c("anime_comment_id") long j10, @c("comment_text") String str, @c("spoiler") String str2, d<? super n4.c<n4.d<b>>> dVar);

    @e
    @p("anime-comments/update-anime-comment-reply")
    Object updateSeriesCommentReply(@c("anime_comment_reply_id") long j10, @c("reply_text") String str, @c("spoiler") String str2, d<? super n4.c<n4.d<b>>> dVar);
}
