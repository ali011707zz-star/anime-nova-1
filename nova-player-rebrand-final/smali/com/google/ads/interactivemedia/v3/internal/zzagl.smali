.class final Lcom/google/ads/interactivemedia/v3/internal/zzagl;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:I


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagl;->zzb:I

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagl;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzagl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzagl;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagl;->zzb:I

    .line 2
    iget v2, p1, Lcom/google/ads/interactivemedia/v3/internal/zzagl;->zzb:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagl;->zza:Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzagl;->zza:Ljava/lang/Object;

    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagl;->zzb:I

    return v0
.end method
