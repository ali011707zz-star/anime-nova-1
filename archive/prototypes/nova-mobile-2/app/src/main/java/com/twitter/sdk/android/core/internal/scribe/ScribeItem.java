package com.twitter.sdk.android.core.internal.scribe;

import com.twitter.sdk.android.core.internal.VineCardUtils;
import com.twitter.sdk.android.core.models.Card;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.core.models.User;
import java.io.Serializable;
import ka.c;

/* loaded from: classes.dex */
public class ScribeItem implements Serializable {
    public static final int TYPE_MESSAGE = 6;
    public static final int TYPE_TWEET = 0;
    public static final int TYPE_USER = 3;

    @c("card_event")
    public final CardEvent cardEvent;

    @c("description")
    public final String description;

    /* renamed from: id, reason: collision with root package name */
    @c("id")
    public final Long f4973id;

    @c("item_type")
    public final Integer itemType;

    @c("media_details")
    public final MediaDetails mediaDetails;

    /* loaded from: classes.dex */
    public static class Builder {
        private CardEvent cardEvent;
        private String description;

        /* renamed from: id, reason: collision with root package name */
        private Long f4974id;
        private Integer itemType;
        private MediaDetails mediaDetails;

        public ScribeItem build() {
            return new ScribeItem(this.itemType, this.f4974id, this.description, this.cardEvent, this.mediaDetails);
        }

        public Builder setCardEvent(CardEvent cardEvent) {
            this.cardEvent = cardEvent;
            return this;
        }

        public Builder setDescription(String str) {
            this.description = str;
            return this;
        }

        public Builder setId(long j10) {
            this.f4974id = Long.valueOf(j10);
            return this;
        }

        public Builder setItemType(int i10) {
            this.itemType = Integer.valueOf(i10);
            return this;
        }

        public Builder setMediaDetails(MediaDetails mediaDetails) {
            this.mediaDetails = mediaDetails;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static class CardEvent implements Serializable {

        @c("promotion_card_type")
        public final int promotionCardType;

        public CardEvent(int i10) {
            this.promotionCardType = i10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.promotionCardType == ((CardEvent) obj).promotionCardType;
        }

        public int hashCode() {
            return this.promotionCardType;
        }
    }

    /* loaded from: classes.dex */
    public static class MediaDetails implements Serializable {
        public static final String GIF_TYPE = "animated_gif";
        public static final int TYPE_AMPLIFY = 2;
        public static final int TYPE_ANIMATED_GIF = 3;
        public static final int TYPE_CONSUMER = 1;
        public static final int TYPE_VINE = 4;

        @c("content_id")
        public final long contentId;

        @c("media_type")
        public final int mediaType;

        @c("publisher_id")
        public final long publisherId;

        public MediaDetails(long j10, int i10, long j11) {
            this.contentId = j10;
            this.mediaType = i10;
            this.publisherId = j11;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            MediaDetails mediaDetails = (MediaDetails) obj;
            return this.contentId == mediaDetails.contentId && this.mediaType == mediaDetails.mediaType && this.publisherId == mediaDetails.publisherId;
        }

        public int hashCode() {
            long j10 = this.contentId;
            int i10 = ((((int) (j10 ^ (j10 >>> 32))) * 31) + this.mediaType) * 31;
            long j11 = this.publisherId;
            return i10 + ((int) (j11 ^ (j11 >>> 32)));
        }
    }

    public static MediaDetails createCardDetails(long j10, Card card) {
        return new MediaDetails(j10, 4, Long.valueOf(VineCardUtils.getPublisherId(card)).longValue());
    }

    public static MediaDetails createMediaDetails(long j10, MediaEntity mediaEntity) {
        return new MediaDetails(j10, getMediaType(mediaEntity), mediaEntity.f4977id);
    }

    public static ScribeItem fromMediaEntity(long j10, MediaEntity mediaEntity) {
        return new Builder().setItemType(0).setId(j10).setMediaDetails(createMediaDetails(j10, mediaEntity)).build();
    }

    public static ScribeItem fromMessage(String str) {
        return new Builder().setItemType(6).setDescription(str).build();
    }

    public static ScribeItem fromTweet(Tweet tweet) {
        return new Builder().setItemType(0).setId(tweet.f4982id).build();
    }

    public static ScribeItem fromTweetCard(long j10, Card card) {
        return new Builder().setItemType(0).setId(j10).setMediaDetails(createCardDetails(j10, card)).build();
    }

    public static ScribeItem fromUser(User user) {
        return new Builder().setItemType(3).setId(user.f4985id).build();
    }

    public static int getMediaType(MediaEntity mediaEntity) {
        return MediaDetails.GIF_TYPE.equals(mediaEntity.type) ? 3 : 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ScribeItem scribeItem = (ScribeItem) obj;
        Integer num = this.itemType;
        if (num == null ? scribeItem.itemType != null : !num.equals(scribeItem.itemType)) {
            return false;
        }
        Long l10 = this.f4973id;
        if (l10 == null ? scribeItem.f4973id != null : !l10.equals(scribeItem.f4973id)) {
            return false;
        }
        String str = this.description;
        if (str == null ? scribeItem.description != null : !str.equals(scribeItem.description)) {
            return false;
        }
        CardEvent cardEvent = this.cardEvent;
        if (cardEvent == null ? scribeItem.cardEvent != null : !cardEvent.equals(scribeItem.cardEvent)) {
            return false;
        }
        MediaDetails mediaDetails = this.mediaDetails;
        MediaDetails mediaDetails2 = scribeItem.mediaDetails;
        if (mediaDetails != null) {
            if (mediaDetails.equals(mediaDetails2)) {
                return true;
            }
        } else if (mediaDetails2 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        Integer num = this.itemType;
        int hashCode = (num != null ? num.hashCode() : 0) * 31;
        Long l10 = this.f4973id;
        int hashCode2 = (hashCode + (l10 != null ? l10.hashCode() : 0)) * 31;
        String str = this.description;
        int hashCode3 = (hashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        CardEvent cardEvent = this.cardEvent;
        int hashCode4 = (hashCode3 + (cardEvent != null ? cardEvent.hashCode() : 0)) * 31;
        MediaDetails mediaDetails = this.mediaDetails;
        return hashCode4 + (mediaDetails != null ? mediaDetails.hashCode() : 0);
    }

    private ScribeItem(Integer num, Long l10, String str, CardEvent cardEvent, MediaDetails mediaDetails) {
        this.itemType = num;
        this.f4973id = l10;
        this.description = str;
        this.cardEvent = cardEvent;
        this.mediaDetails = mediaDetails;
    }
}
