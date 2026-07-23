.class public final Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;
.super Ljava/lang/Object;
.source "ImaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ima/ImaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerSideAdInsertionConfiguration"
.end annotation


# instance fields
.field public final adViewProvider:Landroidx/media3/common/AdViewProvider;

.field public final applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

.field public final applicationAdEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

.field public final companionAdSlots:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList;"
        }
    .end annotation
.end field

.field public final debugModeEnabled:Z

.field public final focusSkipButtonWhenAvailable:Z

.field public final imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

.field public final streamEventListener:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamEventListener;


# direct methods
.method public constructor <init>(Landroidx/media3/common/AdViewProvider;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamEventListener;Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/AdViewProvider;",
            "Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;",
            "Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamEventListener;",
            "Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;",
            "Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
            ">;ZZ)V"
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p2, p0, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 194
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;->adViewProvider:Landroidx/media3/common/AdViewProvider;

    .line 195
    iput-object p3, p0, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;->streamEventListener:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamEventListener;

    .line 196
    iput-object p4, p0, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;->applicationAdEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    .line 197
    iput-object p5, p0, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    .line 198
    invoke-static {p6}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;->companionAdSlots:Lcom/google/common/collect/ImmutableList;

    .line 199
    iput-boolean p7, p0, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;->focusSkipButtonWhenAvailable:Z

    .line 200
    iput-boolean p8, p0, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;->debugModeEnabled:Z

    return-void
.end method
