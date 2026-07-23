.class public final Lcom/google/android/gms/internal/ads/zzaqp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaga;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqp;->zza:Lcom/google/android/gms/internal/ads/zzer;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaga;

    const/4 v1, -0x1

    const-string v2, "image/webp"

    invoke-direct {v0, v1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaga;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqp;->zzb:Lcom/google/android/gms/internal/ads/zzaga;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqp;->zza:Lcom/google/android/gms/internal/ads/zzer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzael;

    const/4 v3, 0x0

    .line 2
    invoke-virtual {p1, v2, v3, v1, v3}, Lcom/google/android/gms/internal/ads/zzael;->zzh([BIIZ)Z

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v4

    const-wide/32 v6, 0x52494646

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzael;->zzj(IZ)Z

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v2

    .line 6
    invoke-virtual {p1, v2, v3, v1, v3}, Lcom/google/android/gms/internal/ads/zzael;->zzh([BIIZ)Z

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v0

    const-wide/32 v4, 0x57454250

    cmp-long p1, v0, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v3
.end method

.method public synthetic zzb()Ljava/util/List;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaeu$-CC;->$default$zzb(Lcom/google/android/gms/internal/ads/zzaeu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaex;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqp;->zzb:Lcom/google/android/gms/internal/ads/zzaga;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaga;->zzc(Lcom/google/android/gms/internal/ads/zzaex;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqp;->zzb:Lcom/google/android/gms/internal/ads/zzaga;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaga;->zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result p1

    return p1
.end method

.method public final zze(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqp;->zzb:Lcom/google/android/gms/internal/ads/zzaga;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaga;->zze(JJ)V

    return-void
.end method

.method public final zzf()V
    .locals 0

    .line 0
    return-void
.end method

.method public synthetic zzg()Lcom/google/android/gms/internal/ads/zzaeu;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaeu$-CC;->$default$zzg(Lcom/google/android/gms/internal/ads/zzaeu;)Lcom/google/android/gms/internal/ads/zzaeu;

    move-result-object v0

    return-object v0
.end method
