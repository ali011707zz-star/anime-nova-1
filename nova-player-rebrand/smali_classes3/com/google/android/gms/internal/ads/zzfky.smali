.class final Lcom/google/android/gms/internal/ads/zzfky;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/util/LinkedList;

.field private final zzb:I

.field private final zzc:I

.field private final zzd:Lcom/google/android/gms/internal/ads/zzflx;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfky;->zza:Ljava/util/LinkedList;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfky;->zzb:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfky;->zzc:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzflx;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzflx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfky;->zzd:Lcom/google/android/gms/internal/ads/zzflx;

    return-void
.end method

.method private final zzi()V
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfky;->zza:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfli;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzfli;->zzd:J

    sub-long/2addr v2, v4

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfky;->zzc:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfky;->zzd:Lcom/google/android/gms/internal/ads/zzflx;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzflx;->zzc()V

    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfli;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfky;->zzd:Lcom/google/android/gms/internal/ads/zzflx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflx;->zza()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfky;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfky;->zza:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfky;->zzb:I

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfli;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfky;->zzd:Lcom/google/android/gms/internal/ads/zzflx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflx;->zza()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfky;->zzi()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfky;->zza:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfli;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflx;->zzb()V

    :cond_1
    return-object v1
.end method

.method public final zzc()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfky;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfky;->zza:Ljava/util/LinkedList;

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public final zzd()J
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfky;->zzd:Lcom/google/android/gms/internal/ads/zzflx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflx;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zze()J
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfky;->zzd:Lcom/google/android/gms/internal/ads/zzflx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflx;->zze()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzf()I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfky;->zzd:Lcom/google/android/gms/internal/ads/zzflx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflx;->zzf()I

    move-result v0

    return v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfky;->zzd:Lcom/google/android/gms/internal/ads/zzflx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflx;->zzh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzflw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfky;->zzd:Lcom/google/android/gms/internal/ads/zzflx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflx;->zzg()Lcom/google/android/gms/internal/ads/zzflw;

    move-result-object v0

    return-object v0
.end method
