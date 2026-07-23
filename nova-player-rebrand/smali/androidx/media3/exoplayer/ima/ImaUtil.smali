.class final Landroidx/media3/exoplayer/ima/ImaUtil;
.super Ljava/lang/Object;
.source "ImaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;,
        Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;,
        Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;
    }
.end annotation


# static fields
.field public static final BITRATE_UNSET:I = -0x1

.field public static final TIMEOUT_UNSET:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLiveAdBreak(JJIJILandroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 19

    move/from16 v0, p7

    move-object/from16 v1, p8

    const/4 v7, 0x0

    const/4 v2, 0x1

    if-lez p4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v7

    .line 959
    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    const/4 v8, -0x1

    move-wide/from16 v3, p0

    .line 961
    invoke-static {v3, v4, v8, v1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide v9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 965
    invoke-virtual {v1, v9, v10, v11, v12}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result v5

    if-ne v5, v8, :cond_2

    add-int/lit8 v2, p4, -0x1

    sub-int v2, v0, v2

    .line 969
    new-array v13, v2, [J

    const/4 v14, 0x0

    move-wide/from16 v15, p2

    move-wide/from16 v17, p5

    .line 970
    invoke-static/range {v13 .. v18}, Landroidx/media3/exoplayer/ima/ImaUtil;->updateAdDurationAndPropagate([JIJJ)[J

    move-result-object v6

    .line 979
    invoke-static {v6}, Landroidx/media3/common/util/Util;->sum([J)J

    move-result-wide v4

    move-wide/from16 v2, p0

    .line 976
    invoke-static/range {v1 .. v6}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->addAdGroupToAdPlaybackState(Landroidx/media3/common/AdPlaybackState;JJ[J)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    .line 982
    invoke-virtual {v1, v9, v10, v11, v12}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result v2

    if-eq v2, v8, :cond_1

    .line 987
    invoke-virtual {v1, v2, v7}, Landroidx/media3/common/AdPlaybackState;->withAvailableAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    .line 988
    invoke-virtual {v1, v2, v0}, Landroidx/media3/common/AdPlaybackState;->withOriginalAdCount(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1

    .line 991
    :cond_2
    invoke-virtual {v1, v5}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    .line 992
    iget-object v3, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 993
    invoke-static {v2}, Landroidx/media3/exoplayer/ima/ImaUtil;->getNextUnavailableAdIndex(Landroidx/media3/common/AdPlaybackState$AdGroup;)I

    move-result v7

    .line 994
    iget v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    if-lt v4, v0, :cond_4

    iget v2, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ne v7, v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-object v6, v3

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v2, v7, 0x1

    .line 995
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 998
    invoke-virtual {v1, v5, v0}, Landroidx/media3/common/AdPlaybackState;->withAdCount(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    .line 999
    invoke-virtual {v1, v5, v0}, Landroidx/media3/common/AdPlaybackState;->withOriginalAdCount(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    .line 1000
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 1001
    aput-wide p5, v3, v7

    const-wide/16 v8, 0x0

    .line 1002
    invoke-static {v3, v2, v0, v8, v9}, Ljava/util/Arrays;->fill([JIIJ)V

    goto :goto_1

    .line 1008
    :goto_3
    aget-wide v2, v6, v7

    move-wide/from16 v8, p2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 1009
    invoke-static/range {v6 .. v11}, Landroidx/media3/exoplayer/ima/ImaUtil;->updateAdDurationAndPropagate([JIJJ)[J

    .line 1013
    invoke-virtual {v1, v5, v6}, Landroidx/media3/common/AdPlaybackState;->withAdDurationsUs(I[J)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    .line 1014
    invoke-virtual {v0, v5, v7}, Landroidx/media3/common/AdPlaybackState;->withAvailableAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    .line 1015
    invoke-static {v6}, Landroidx/media3/common/util/Util;->sum([J)J

    move-result-wide v1

    invoke-virtual {v0, v5, v1, v2}, Landroidx/media3/common/AdPlaybackState;->withContentResumeOffsetUs(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public static expandAdGroupPlaceholder(IJIJILandroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 3

    if-ge p3, p6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 322
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 323
    new-array p6, p6, [J

    move-wide v1, p1

    move p2, p3

    move-wide p3, p4

    move-object p1, p6

    move-wide p5, v1

    .line 324
    invoke-static/range {p1 .. p6}, Landroidx/media3/exoplayer/ima/ImaUtil;->updateAdDurationAndPropagate([JIJJ)[J

    move-result-object p1

    .line 326
    array-length p2, p1

    .line 327
    invoke-virtual {p7, p0, p2}, Landroidx/media3/common/AdPlaybackState;->withAdCount(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object p2

    .line 328
    invoke-virtual {p2, p0, p1}, Landroidx/media3/common/AdPlaybackState;->withAdDurationsUs(I[J)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    return-object p0
.end method

.method public static getAdGroupAndIndexInLiveMultiPeriodTimeline(ILandroidx/media3/common/AdPlaybackState;Landroidx/media3/common/Timeline;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/AdPlaybackState;",
            "Landroidx/media3/common/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 819
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    .line 820
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 821
    new-instance v2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    const/4 v3, 0x1

    .line 822
    invoke-virtual {p2, p0, v2, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 823
    iget-wide v4, v0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    iget-wide v6, v0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 824
    invoke-static {v4, v5, v6, v7}, Landroidx/media3/exoplayer/ima/ImaUtil;->getWindowStartTimeUs(JJ)J

    move-result-wide v4

    iget-wide v6, v2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long/2addr v4, v6

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 827
    invoke-virtual {p1, v4, v5, v6, v7}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 829
    invoke-virtual {p1, p2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    move v0, v1

    .line 830
    :goto_0
    iget-object v2, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v6, v2

    if-ge v0, v6, :cond_2

    .line 831
    aget v2, v2, v0

    if-eq v2, v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 832
    :cond_1
    :goto_1
    new-instance p0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 836
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 840
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p0, v0, v3

    .line 837
    const-string p0, "No unplayed ad group found before or at the start time us %d of the period with index %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getAdGroupAndIndexInVodMultiPeriodTimeline(ILandroidx/media3/common/AdPlaybackState;Landroidx/media3/common/Timeline;)Landroid/util/Pair;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/AdPlaybackState;",
            "Landroidx/media3/common/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 854
    new-instance v3, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    .line 855
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 858
    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 859
    iget-wide v9, v3, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    iget-wide v11, v3, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 860
    invoke-static {v9, v10, v11, v12}, Landroidx/media3/exoplayer/ima/ImaUtil;->getWindowStartTimeUs(JJ)J

    move-result-wide v9

    .line 861
    iget-wide v11, v3, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    sub-long/2addr v9, v11

    goto :goto_1

    :cond_1
    const-wide/16 v9, 0x0

    .line 863
    :goto_1
    new-instance v3, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 864
    iget v5, v1, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move v11, v4

    :goto_2
    iget v12, v1, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge v5, v12, :cond_6

    .line 866
    invoke-virtual {v1, v5}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v12

    .line 867
    iget-object v13, v12, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-static {v13}, Landroidx/media3/common/util/Util;->sum([J)J

    move-result-wide v13

    move/from16 v17, v4

    move/from16 v16, v5

    move v15, v11

    const-wide/16 v4, 0x0

    .line 869
    :goto_3
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v7

    add-int/lit8 v8, v0, 0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v11, v7, :cond_5

    .line 870
    invoke-virtual {v2, v11, v3, v6}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 871
    iget-wide v7, v12, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v18, v9, v7

    if-gez v18, :cond_2

    .line 873
    iget-wide v7, v3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    add-long/2addr v9, v7

    goto :goto_4

    :cond_2
    add-long v18, v9, v4

    move-wide/from16 v20, v7

    .line 876
    iget-wide v6, v3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    add-long v18, v18, v6

    add-long v20, v20, v13

    cmp-long v8, v18, v20

    if-gtz v8, :cond_4

    if-ne v11, v0, :cond_3

    .line 879
    new-instance v0, Landroid/util/Pair;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    add-long/2addr v4, v6

    add-int/lit8 v17, v17, 0x1

    :goto_4
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_3

    .line 885
    :cond_4
    iget-wide v6, v12, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 886
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v9, v4

    :cond_5
    add-int/lit8 v5, v16, 0x1

    move v11, v15

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_2

    .line 894
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static getAdGroupDurationUsForLiveAdPeriodIndex(Landroidx/media3/common/Timeline;Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;ILandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)J
    .locals 7

    .line 675
    invoke-virtual {p0, p2, p4}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 676
    iget p4, p4, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {p0, p4, p3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 677
    invoke-virtual {p3}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p4

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 678
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getAdPosition()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    sub-int v0, p2, p4

    .line 680
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTotalAds()I

    move-result v1

    sub-int/2addr v1, p4

    add-int/lit8 v1, v1, -0x1

    add-int/2addr p2, v1

    .line 682
    iget p4, p3, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-gt p4, v0, :cond_0

    iget p3, p3, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-ge p2, p3, :cond_0

    .line 685
    new-instance p3, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p3}, Landroidx/media3/common/Timeline$Period;-><init>()V

    const-wide/16 v3, 0x0

    :goto_0
    if-gt v0, p2, :cond_2

    .line 687
    invoke-virtual {p0, v0, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p4

    iget-wide v5, p4, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long p4, v5, v1

    if-nez p4, :cond_1

    :cond_0
    move-wide v3, v1

    goto :goto_1

    :cond_1
    add-long/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    cmp-long p0, v3, v1

    if-eqz p0, :cond_3

    return-wide v3

    .line 697
    :cond_3
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getMaxDuration()D

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ima/ImaUtil;->secToUsRounded(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getAdGroupTimesUsForCuePoints(Ljava/util/List;)[J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)[J"
        }
    .end annotation

    .line 233
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 234
    new-array p0, p0, [J

    const-wide/16 v2, 0x0

    aput-wide v2, p0, v1

    return-object p0

    .line 237
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 238
    new-array v2, v0, [J

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    .line 241
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpl-double v7, v5, v7

    if-nez v7, :cond_1

    add-int/lit8 v5, v0, -0x1

    const-wide/high16 v6, -0x8000000000000000L

    .line 243
    aput-wide v6, v2, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v4, 0x1

    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v5, v8

    .line 245
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    aput-wide v5, v2, v4

    move v4, v7

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :cond_2
    invoke-static {v2, v1, v4}, Ljava/util/Arrays;->sort([JII)V

    return-object v2
.end method

.method public static getAdsRequestForAdTagDataSpec(Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;Landroidx/media3/datasource/DataSpec;)Lcom/google/ads/interactivemedia/v3/api/AdsRequest;
    .locals 2

    .line 256
    invoke-interface {p0}, Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;->createAdsRequest()Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    move-result-object p0

    .line 257
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Landroidx/media3/datasource/DataSchemeDataSource;

    invoke-direct {v0}, Landroidx/media3/datasource/DataSchemeDataSource;-><init>()V

    .line 260
    :try_start_0
    invoke-virtual {v0, p1}, Landroidx/media3/datasource/DataSchemeDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    .line 261
    invoke-static {v0}, Landroidx/media3/datasource/DataSourceUtil;->readToEnd(Landroidx/media3/datasource/DataSource;)[B

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdsResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-virtual {v0}, Landroidx/media3/datasource/DataSchemeDataSource;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/media3/datasource/DataSchemeDataSource;->close()V

    .line 264
    throw p0

    .line 266
    :cond_0
    iget-object p1, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdTagUrl(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getFriendlyObstructionPurpose(I)Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 222
    sget-object p0, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;->OTHER:Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    return-object p0

    .line 219
    :cond_0
    sget-object p0, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;->NOT_VISIBLE:Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    return-object p0

    .line 217
    :cond_1
    sget-object p0, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;->CLOSE_AD:Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    return-object p0

    .line 215
    :cond_2
    sget-object p0, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;->VIDEO_CONTROLS:Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    return-object p0
.end method

.method public static getImaLooper()Landroid/os/Looper;
    .locals 1

    .line 283
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private static getNextUnavailableAdIndex(Landroidx/media3/common/AdPlaybackState$AdGroup;)I
    .locals 3

    const/4 v0, 0x0

    .line 1064
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1065
    aget v1, v1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1069
    :cond_1
    array-length p0, v1

    return p0
.end method

.method public static getStringForVideoProgressUpdate(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)Ljava/lang/String;
    .locals 3

    .line 289
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const-string p0, "not ready"

    return-object p0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTimeMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDurationMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    .line 292
    const-string p0, "%d ms of %d ms"

    invoke-static {p0, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWindowStartTimeUs(JJ)J
    .locals 2

    .line 397
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p0

    const-wide/16 v0, 0x3e8

    rem-long/2addr p2, v0

    add-long/2addr p0, p2

    return-wide p0
.end method

.method public static handleAdPeriodRemovedFromTimeline(ILandroidx/media3/common/Timeline;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 716
    new-instance v2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    move/from16 v3, p0

    invoke-virtual {v0, v3, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    .line 717
    iget v3, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    new-instance v4, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    .line 718
    iget-wide v3, v0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    iget-wide v5, v0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 719
    invoke-static {v3, v4, v5, v6}, Landroidx/media3/exoplayer/ima/ImaUtil;->getWindowStartTimeUs(JJ)J

    move-result-wide v3

    iget-wide v5, v2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v7, v3, v5

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 722
    invoke-virtual {v1, v7, v8, v3, v4}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_9

    .line 724
    invoke-virtual {v1, v0}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v6

    .line 725
    iget-wide v9, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide v11, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v9, v11

    cmp-long v9, v9, v7

    const/4 v10, 0x1

    if-gtz v9, :cond_0

    .line 727
    invoke-static {v0, v10, v1}, Landroidx/media3/exoplayer/ima/ImaUtil;->markAdGroupAsPlayed(IZLandroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    move v13, v9

    .line 731
    :goto_0
    iget-object v14, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v15, v14

    if-ge v13, v15, :cond_9

    .line 732
    aget v14, v14, v13

    if-ne v14, v10, :cond_1

    move v5, v13

    :cond_1
    move-wide/from16 p0, v3

    .line 736
    iget-wide v3, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    add-long v15, v3, v11

    cmp-long v15, v7, v15

    if-gtz v15, :cond_6

    add-long/2addr v3, v11

    cmp-long v3, v7, v3

    if-nez v3, :cond_4

    if-eq v14, v10, :cond_9

    const/4 v3, 0x3

    if-ne v14, v3, :cond_2

    goto :goto_1

    :cond_2
    if-nez v14, :cond_4

    add-int/lit8 v3, v13, -0x1

    if-ne v5, v3, :cond_4

    .line 744
    iget-wide v2, v2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v4, v2, p0

    if-nez v4, :cond_3

    goto :goto_1

    .line 750
    :cond_3
    invoke-static {v0, v13, v2, v3, v1}, Landroidx/media3/exoplayer/ima/ImaUtil;->updateAdDurationInAdGroup(IIJLandroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    .line 755
    invoke-virtual {v1, v0}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    .line 756
    iget-object v2, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 757
    invoke-static {v2}, Landroidx/media3/common/util/Util;->sum([J)J

    move-result-wide v2

    .line 756
    invoke-virtual {v1, v0, v2, v3}, Landroidx/media3/common/AdPlaybackState;->withContentResumeOffsetUs(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    return-object v0

    .line 763
    :cond_4
    invoke-static {v0, v9, v1}, Landroidx/media3/exoplayer/ima/ImaUtil;->markAdGroupAsPlayed(IZLandroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v15

    .line 767
    iget-wide v9, v2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v0, v9, p0

    if-eqz v0, :cond_5

    const/4 v11, 0x1

    const/4 v14, 0x1

    move-wide v12, v9

    .line 769
    invoke-static/range {v7 .. v15}, Landroidx/media3/exoplayer/ima/ImaUtil;->addLiveAdBreak(JJIJILandroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    return-object v0

    :cond_5
    return-object v15

    :cond_6
    if-eq v14, v10, :cond_7

    if-nez v14, :cond_8

    .line 780
    :cond_7
    invoke-virtual {v1, v0, v13}, Landroidx/media3/common/AdPlaybackState;->withSkippedAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    .line 782
    :cond_8
    iget-object v3, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v14, v3, v13

    add-long/2addr v11, v14

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v3, p0

    goto :goto_0

    :cond_9
    :goto_1
    return-object v1
.end method

.method public static isAdGroupLoadError(Lcom/google/ads/interactivemedia/v3/api/AdError;)Z
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getErrorCode()Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_LINEAR_ASSET_MISMATCH:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    if-eq v0, v1, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getErrorCode()Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    move-result-object p0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->UNKNOWN_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static markAdGroupAsPlayed(IZLandroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 7

    .line 790
    invoke-virtual {p2, p0}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 791
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v1, v1

    new-array v2, v1, [J

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    if-eqz p1, :cond_0

    .line 793
    iget-object v4, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v5, v4, v3

    goto :goto_1

    :cond_0
    const-wide/16 v5, 0x0

    :goto_1
    aput-wide v5, v2, v3

    .line 794
    iget-object v4, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v4, v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    if-nez v4, :cond_2

    .line 797
    :cond_1
    invoke-virtual {p2, p0, v3}, Landroidx/media3/common/AdPlaybackState;->withSkippedAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object p2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 801
    :cond_3
    invoke-virtual {p2, p0, v2}, Landroidx/media3/common/AdPlaybackState;->withAdDurationsUs(I[J)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    .line 802
    invoke-static {v2}, Landroidx/media3/common/util/Util;->sum([J)J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroidx/media3/common/AdPlaybackState;->withContentResumeOffsetUs(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    return-object p0
.end method

.method public static maybeCorrectPreviouslyUnknownAdDurations(Landroidx/media3/common/Timeline;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 14

    .line 581
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    .line 582
    iget v2, v0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget v3, v0, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-eq v2, v3, :cond_c

    iget v2, p1, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_6

    .line 586
    :cond_0
    new-instance v2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 587
    iget v3, v0, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    .line 588
    invoke-virtual {p0, v3, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v4

    iget-wide v4, v4, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    .line 590
    invoke-virtual {p0, v3, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 593
    :cond_1
    iget-wide v4, v0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    iget-wide v8, v0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 594
    invoke-static {v4, v5, v8, v9}, Landroidx/media3/exoplayer/ima/ImaUtil;->getWindowStartTimeUs(JJ)J

    move-result-wide v4

    .line 595
    iget-wide v8, v2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long/2addr v8, v4

    .line 597
    invoke-virtual {p1, v8, v9, v6, v7}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    goto :goto_1

    .line 603
    :cond_2
    invoke-virtual {p1, v6}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v8

    .line 605
    iget-wide v9, v0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    sub-long/2addr v4, v9

    .line 606
    iget-wide v9, v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide v11, v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v11, v9

    cmp-long v11, v11, v4

    if-gtz v11, :cond_3

    goto :goto_1

    :cond_3
    move v11, v1

    :goto_0
    cmp-long v12, v9, v4

    const/4 v13, 0x1

    if-gez v12, :cond_5

    .line 614
    iget-object v12, v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v12, v12, v11

    if-ne v12, v13, :cond_4

    :goto_1
    return-object p1

    .line 620
    :cond_4
    iget-object v12, v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    add-int/lit8 v13, v11, 0x1

    aget-wide v11, v12, v11

    add-long/2addr v9, v11

    move v11, v13

    goto :goto_0

    .line 623
    :cond_5
    iget v0, v0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    :goto_2
    if-gt v0, v3, :cond_7

    .line 624
    iget-wide v9, v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v9, v9, v4

    if-gtz v9, :cond_6

    goto :goto_3

    .line 628
    :cond_6
    invoke-virtual {p0, v0, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v9

    iget-wide v9, v9, Landroidx/media3/common/Timeline$Period;->durationUs:J

    add-long/2addr v4, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v7

    :goto_3
    if-eq v0, v7, :cond_8

    move v1, v13

    .line 630
    :cond_8
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    move v1, v11

    .line 633
    :goto_4
    iget-object v4, v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v4, v4

    if-ge v1, v4, :cond_b

    sub-int v4, v1, v11

    add-int/2addr v4, v0

    if-le v4, v3, :cond_9

    goto :goto_5

    .line 638
    :cond_9
    invoke-virtual {p0, v4, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 639
    iget-wide v4, v2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    iget-object v7, v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v9, v7, v1

    cmp-long v7, v4, v9

    if-eqz v7, :cond_a

    .line 642
    invoke-static {v6, v1, v4, v5, p1}, Landroidx/media3/exoplayer/ima/ImaUtil;->updateAdDurationInAdGroup(IIJLandroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 647
    :cond_b
    :goto_5
    invoke-virtual {p1, v6}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-static {p0}, Landroidx/media3/common/util/Util;->sum([J)J

    move-result-wide v0

    .line 648
    invoke-virtual {p1, v6, v0, v1}, Landroidx/media3/common/AdPlaybackState;->withContentResumeOffsetUs(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_6
    return-object p1
.end method

.method public static secToMsRounded(D)J
    .locals 1

    .line 1095
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 1094
    invoke-static {p0, p1, v0}, Lcom/google/common/math/DoubleMath;->roundToLong(DLjava/math/RoundingMode;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static secToUsRounded(D)J
    .locals 1

    .line 1082
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 1081
    invoke-static {p0, p1, v0}, Lcom/google/common/math/DoubleMath;->roundToLong(DLjava/math/RoundingMode;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static splitAdGroup(Landroidx/media3/common/AdPlaybackState$AdGroup;IILandroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    .line 1036
    iget v5, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ge v2, v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    move-object/from16 v5, p3

    move v6, v3

    .line 1038
    :goto_1
    iget v7, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    sub-int/2addr v7, v2

    if-ge v6, v7, :cond_1

    .line 1039
    invoke-virtual {v5, v1}, Landroidx/media3/common/AdPlaybackState;->withLastAdRemoved(I)Landroidx/media3/common/AdPlaybackState;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1041
    :cond_1
    invoke-virtual {v5, v1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    .line 1042
    iget-wide v6, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide v8, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long v10, v6, v8

    .line 1045
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget v6, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    invoke-static {v1, v2, v6}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    .line 1046
    iget-object v6, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget v0, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 1047
    invoke-static {v6, v2, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    .line 1048
    invoke-static {v0}, Landroidx/media3/common/util/Util;->sum([J)J

    move-result-wide v6

    move-object/from16 v18, v5

    move-wide v15, v6

    .line 1049
    :goto_2
    array-length v2, v1

    if-ge v3, v2, :cond_2

    aget v2, v1, v3

    if-ne v2, v4, :cond_2

    .line 1050
    aget-wide v12, v0, v3

    add-int/lit8 v14, v3, 0x1

    array-length v2, v0

    move/from16 v17, v2

    .line 1051
    invoke-static/range {v10 .. v18}, Landroidx/media3/exoplayer/ima/ImaUtil;->addLiveAdBreak(JJIJILandroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v18

    .line 1058
    aget-wide v2, v0, v3

    sub-long/2addr v15, v2

    move v3, v14

    goto :goto_2

    :cond_2
    return-object v18
.end method

.method private static splitAdGroupForPeriod(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState$AdGroup;JJZ)Landroidx/media3/common/AdPlaybackState;
    .locals 18

    move-object/from16 v0, p1

    .line 505
    new-instance v1, Landroidx/media3/common/AdPlaybackState;

    .line 506
    invoke-static/range {p0 .. p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [J

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    invoke-direct {v1, v2, v4}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[J)V

    .line 507
    invoke-virtual {v1, v5, v3}, Landroidx/media3/common/AdPlaybackState;->withIsServerSideInserted(IZ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    .line 508
    invoke-virtual {v1, v5, v3}, Landroidx/media3/common/AdPlaybackState;->withAdCount(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    if-eqz p6, :cond_0

    .line 511
    invoke-virtual {v1, v3}, Landroidx/media3/common/AdPlaybackState;->withLivePostrollPlaceholderAppended(Z)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    :cond_0
    move v2, v5

    move-wide v8, v6

    .line 514
    :goto_0
    iget v4, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ge v2, v4, :cond_8

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p4, v10

    if-eqz v4, :cond_1

    move-wide/from16 v10, p4

    goto :goto_1

    .line 516
    :cond_1
    iget-object v4, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v10, v4, v2

    :goto_1
    add-long v12, p2, v10

    .line 518
    iget-object v4, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v14, v4, v2

    add-long/2addr v8, v14

    .line 521
    iget-wide v14, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    add-long/2addr v14, v8

    const-wide/16 v16, 0x2710

    add-long v14, v14, v16

    cmp-long v4, v12, v14

    if-gtz v4, :cond_7

    .line 522
    new-array v4, v3, [J

    aput-wide v10, v4, v5

    .line 524
    invoke-virtual {v1, v5, v4}, Landroidx/media3/common/AdPlaybackState;->withAdDurationsUs(I[J)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    if-eqz p6, :cond_2

    move-wide v6, v10

    .line 525
    :cond_2
    invoke-virtual {v1, v5, v6, v7}, Landroidx/media3/common/AdPlaybackState;->withContentResumeOffsetUs(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    .line 528
    iget-object v0, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v0, v0, v2

    if-eq v0, v3, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    return-object v1

    .line 543
    :cond_3
    invoke-virtual {v1, v5, v5}, Landroidx/media3/common/AdPlaybackState;->withAdLoadError(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    return-object v0

    .line 535
    :cond_4
    invoke-virtual {v1, v5, v5}, Landroidx/media3/common/AdPlaybackState;->withPlayedAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    return-object v0

    .line 539
    :cond_5
    invoke-virtual {v1, v5, v5}, Landroidx/media3/common/AdPlaybackState;->withSkippedAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    return-object v0

    .line 531
    :cond_6
    invoke-virtual {v1, v5, v5}, Landroidx/media3/common/AdPlaybackState;->withAvailableAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    return-object v0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-object v1
.end method

.method public static splitAdPlaybackStateForPeriods(Landroidx/media3/common/AdPlaybackState;Landroidx/media3/common/Timeline;)Lcom/google/common/collect/ImmutableMap;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/AdPlaybackState;",
            "Landroidx/media3/common/Timeline;",
            ")",
            "Lcom/google/common/collect/ImmutableMap;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 417
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 418
    new-instance v2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 419
    new-instance v4, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v4

    .line 422
    iget-object v6, v0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 423
    new-instance v6, Landroidx/media3/common/AdPlaybackState;

    new-array v8, v5, [J

    invoke-direct {v6, v7, v8}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[J)V

    .line 424
    invoke-virtual {v4}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 425
    iget-wide v8, v4, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    iget-wide v10, v4, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 426
    invoke-static {v8, v9, v10, v11}, Landroidx/media3/exoplayer/ima/ImaUtil;->getWindowStartTimeUs(JJ)J

    move-result-wide v8

    .line 427
    iget-wide v10, v4, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    sub-long/2addr v8, v10

    .line 429
    invoke-virtual {v6, v3}, Landroidx/media3/common/AdPlaybackState;->withLivePostrollPlaceholderAppended(Z)Landroidx/media3/common/AdPlaybackState;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x0

    .line 432
    :goto_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 433
    iget v11, v0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move v12, v5

    :goto_1
    iget v13, v0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge v11, v13, :cond_2

    move-wide/from16 v16, v8

    .line 434
    invoke-virtual {v0, v11}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v8

    .line 436
    iget-wide v14, v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v9, v14, v18

    if-nez v9, :cond_3

    .line 437
    iget v0, v0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    sub-int/2addr v0, v3

    if-ne v11, v0, :cond_1

    move v5, v3

    :cond_1
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :cond_2
    move-object v3, v10

    goto/16 :goto_6

    .line 443
    :cond_3
    iget-object v9, v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-static {v9}, Landroidx/media3/common/util/Util;->sum([J)J

    move-result-wide v14

    move/from16 v21, v5

    move v9, v12

    move/from16 v18, v9

    const-wide/16 v19, 0x0

    .line 445
    :goto_2
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v12

    if-ge v9, v12, :cond_c

    .line 446
    invoke-virtual {v1, v9, v2, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 447
    iget-wide v12, v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v22, v16, v12

    if-gez v22, :cond_4

    .line 449
    iget-object v12, v2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v12}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-wide v12, v2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    add-long v16, v16, v12

    add-int/lit8 v18, v18, 0x1

    move/from16 v22, v9

    move-object v3, v10

    move/from16 v25, v11

    goto :goto_4

    :cond_4
    add-long v22, v16, v19

    move-wide/from16 v24, v12

    move v13, v11

    .line 455
    iget-wide v11, v2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v26, v11, v26

    if-eqz v26, :cond_5

    add-long v27, v22, v11

    add-long v29, v24, v14

    cmp-long v27, v27, v29

    if-lez v27, :cond_6

    :cond_5
    if-nez v26, :cond_b

    cmp-long v26, v19, v14

    if-gez v26, :cond_b

    add-long v24, v24, v14

    cmp-long v24, v22, v24

    if-gez v24, :cond_b

    .line 463
    :cond_6
    iget-object v5, v2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 464
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move/from16 v25, v13

    .line 466
    invoke-virtual {v4}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v13

    move-object v3, v10

    move-wide/from16 v31, v22

    move/from16 v22, v9

    move-wide/from16 v9, v31

    .line 465
    invoke-static/range {v7 .. v13}, Landroidx/media3/exoplayer/ima/ImaUtil;->splitAdGroupForPeriod(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState$AdGroup;JJZ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v13

    .line 463
    invoke-interface {v3, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v5, v21, 0x1

    add-long v19, v19, v11

    .line 471
    iget v13, v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget v0, v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-le v13, v0, :cond_7

    if-eq v0, v5, :cond_8

    :cond_7
    add-long/2addr v9, v11

    iget-wide v11, v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    add-long/2addr v11, v14

    cmp-long v0, v9, v11

    if-nez v0, :cond_a

    .line 474
    :cond_8
    invoke-virtual {v4}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v0

    if-eqz v0, :cond_9

    add-long v16, v16, v19

    :cond_9
    :goto_3
    move-wide/from16 v8, v16

    move/from16 v12, v18

    goto :goto_5

    :cond_a
    move/from16 v21, v5

    :goto_4
    add-int/lit8 v9, v22, 0x1

    move-object/from16 v0, p0

    move-object v10, v3

    move/from16 v11, v25

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_b
    move-object v3, v10

    move/from16 v25, v13

    goto :goto_3

    :cond_c
    move-object v3, v10

    move/from16 v25, v11

    goto :goto_3

    :goto_5
    add-int/lit8 v11, v25, 0x1

    move-object/from16 v0, p0

    move-object v10, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 492
    :goto_6
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    if-ge v12, v0, :cond_d

    const/4 v0, 0x1

    .line 493
    invoke-virtual {v1, v12, v2, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 494
    iget-object v4, v2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 496
    :cond_d
    invoke-static {v3}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private static updateAdDurationAndPropagate([JIJJ)[J
    .locals 4

    .line 378
    aput-wide p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    .line 379
    array-length v0, p0

    rem-int/2addr p1, v0

    .line 380
    aget-wide v0, p0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sub-long/2addr p4, p2

    .line 382
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, p0, p1

    :cond_0
    return-object p0
.end method

.method public static updateAdDurationInAdGroup(IIJLandroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 9

    .line 349
    invoke-virtual {p4, p0}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 350
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v1, v1

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 351
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v2, v1

    .line 353
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iget-object v0, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v7, v0, p1

    move v4, p1

    move-wide v5, p2

    .line 352
    invoke-static/range {v3 .. v8}, Landroidx/media3/exoplayer/ima/ImaUtil;->updateAdDurationAndPropagate([JIJJ)[J

    move-result-object p1

    .line 357
    invoke-virtual {p4, p0, p1}, Landroidx/media3/common/AdPlaybackState;->withAdDurationsUs(I[J)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    return-object p0
.end method
