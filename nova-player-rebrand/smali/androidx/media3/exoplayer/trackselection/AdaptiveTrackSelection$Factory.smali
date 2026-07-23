.class public Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final bandwidthFraction:F

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Landroidx/media3/common/util/Clock;

.field private final maxDurationForQualityDecreaseMs:I

.field private final maxHeightToDiscard:I

.field private final maxWidthToDiscard:I

.field private final minDurationForQualityIncreaseMs:I

.field private final minDurationToRetainAfterDiscardMs:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x61a8

    const v1, 0x3f333333    # 0.7f

    const/16 v2, 0x2710

    .line 67
    invoke-direct {p0, v2, v0, v0, v1}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIF)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 9

    const/high16 v7, 0x3f400000    # 0.75f

    .line 95
    sget-object v8, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    const/16 v4, 0x4ff

    const/16 v5, 0x2cf

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLandroidx/media3/common/util/Clock;)V

    return-void
.end method

.method public constructor <init>(IIIFFLandroidx/media3/common/util/Clock;)V
    .locals 9

    const/16 v4, 0x4ff

    const/16 v5, 0x2cf

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .line 174
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLandroidx/media3/common/util/Clock;)V

    return-void
.end method

.method public constructor <init>(IIIIIF)V
    .locals 9

    const/high16 v7, 0x3f400000    # 0.75f

    .line 133
    sget-object v8, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLandroidx/media3/common/util/Clock;)V

    return-void
.end method

.method public constructor <init>(IIIIIFFLandroidx/media3/common/util/Clock;)V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    .line 222
    iput p2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    .line 223
    iput p3, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    .line 224
    iput p4, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxWidthToDiscard:I

    .line 225
    iput p5, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxHeightToDiscard:I

    .line 226
    iput p6, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    .line 227
    iput p7, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 229
    iput-object p8, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->clock:Landroidx/media3/common/util/Clock;

    return-void
.end method


# virtual methods
.method protected createAdaptiveTrackSelection(Landroidx/media3/common/TrackGroup;[IILandroidx/media3/exoplayer/upstream/BandwidthMeter;Lcom/google/common/collect/ImmutableList;)Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/TrackGroup;",
            "[II",
            "Landroidx/media3/exoplayer/upstream/BandwidthMeter;",
            "Lcom/google/common/collect/ImmutableList;",
            ")",
            "Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 279
    new-instance v1, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;

    iget v2, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    int-to-long v6, v2

    iget v2, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    int-to-long v8, v2

    iget v2, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    int-to-long v10, v2

    iget v12, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxWidthToDiscard:I

    iget v13, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxHeightToDiscard:I

    iget v14, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    iget v15, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    iget-object v2, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->clock:Landroidx/media3/common/util/Clock;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v16, p5

    move-object/from16 v17, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v17}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[IILandroidx/media3/exoplayer/upstream/BandwidthMeter;JJJIIFFLjava/util/List;Landroidx/media3/common/util/Clock;)V

    return-object v1
.end method

.method public final createTrackSelections([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Landroidx/media3/exoplayer/upstream/BandwidthMeter;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .locals 9

    .line 239
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->access$000([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    .line 240
    array-length p4, p1

    new-array p4, p4, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    const/4 v0, 0x0

    move v1, v0

    .line 241
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 242
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 243
    iget-object v5, v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v3, v5

    if-nez v3, :cond_1

    :cond_0
    move-object v7, p2

    goto :goto_2

    .line 247
    :cond_1
    array-length v3, v5

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 248
    new-instance v3, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;

    iget-object v4, v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    aget v5, v5, v0

    iget v2, v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->type:I

    invoke-direct {v3, v4, v5, v2}, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;II)V

    move-object v7, p2

    goto :goto_1

    .line 252
    :cond_2
    iget-object v4, v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iget v6, v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->type:I

    .line 257
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/common/collect/ImmutableList;

    move-object v3, p0

    move-object v7, p2

    .line 252
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->createAdaptiveTrackSelection(Landroidx/media3/common/TrackGroup;[IILandroidx/media3/exoplayer/upstream/BandwidthMeter;Lcom/google/common/collect/ImmutableList;)Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;

    move-result-object p2

    move-object v3, p2

    :goto_1
    aput-object v3, p4, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object p2, v7

    goto :goto_0

    :cond_3
    return-object p4
.end method
