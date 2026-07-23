.class public Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;
.super Ljava/lang/Object;
.source "ImaServerSideAdInsertionMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field private static final FIELD_AD_PLAYBACK_STATES:Ljava/lang/String;


# instance fields
.field private final adPlaybackStates:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 405
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;->FIELD_AD_PLAYBACK_STATES:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap;",
            ")V"
        }
    .end annotation

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    .line 379
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;
    .locals 4

    .line 420
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 422
    sget-object v1, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;->FIELD_AD_PLAYBACK_STATES:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 423
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 425
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Landroidx/media3/common/AdPlaybackState;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v3

    .line 427
    invoke-static {v2, v3}, Landroidx/media3/common/AdPlaybackState;->fromAdPlaybackState(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v3

    .line 426
    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 429
    :cond_0
    new-instance p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 393
    :cond_0
    instance-of v0, p1, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 396
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;

    .line 397
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object p1, p1, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 402
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 5

    .line 408
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 409
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 410
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 411
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v3}, Landroidx/media3/common/AdPlaybackState;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 413
    :cond_0
    sget-object v2, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;->FIELD_AD_PLAYBACK_STATES:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
