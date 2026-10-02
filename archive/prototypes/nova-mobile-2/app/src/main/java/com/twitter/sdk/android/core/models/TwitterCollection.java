package com.twitter.sdk.android.core.models;

import java.util.List;
import java.util.Map;
import ka.c;

/* loaded from: classes.dex */
public class TwitterCollection {

    @c("objects")
    public final Content contents;

    @c("response")
    public final Metadata metadata;

    /* loaded from: classes.dex */
    public static final class Content {

        @c("tweets")
        public final Map<Long, Tweet> tweetMap;

        @c("users")
        public final Map<Long, User> userMap;

        public Content(Map<Long, Tweet> map, Map<Long, User> map2) {
            this.tweetMap = ModelUtils.getSafeMap(map);
            this.userMap = ModelUtils.getSafeMap(map2);
        }
    }

    /* loaded from: classes.dex */
    public static final class Metadata {

        @c("position")
        public final Position position;

        @c("timeline_id")
        public final String timelineId;

        @c("timeline")
        public final List<TimelineItem> timelineItems;

        /* loaded from: classes.dex */
        public static final class Position {

            @c("max_position")
            public final Long maxPosition;

            @c("min_position")
            public final Long minPosition;

            public Position(Long l10, Long l11) {
                this.maxPosition = l10;
                this.minPosition = l11;
            }
        }

        public Metadata(String str, Position position, List<TimelineItem> list) {
            this.timelineId = str;
            this.position = position;
            this.timelineItems = list;
        }
    }

    /* loaded from: classes.dex */
    public static class TimelineItem {

        @c("tweet")
        public final TweetItem tweetItem;

        /* loaded from: classes.dex */
        public static final class TweetItem {

            /* renamed from: id, reason: collision with root package name */
            @c("id")
            public final Long f4984id;

            public TweetItem(Long l10) {
                this.f4984id = l10;
            }
        }

        public TimelineItem(TweetItem tweetItem) {
            this.tweetItem = tweetItem;
        }
    }

    public TwitterCollection(Content content, Metadata metadata) {
        this.contents = content;
        this.metadata = metadata;
    }
}
