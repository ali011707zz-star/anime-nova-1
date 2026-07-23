.class final Lcom/google/android/gms/internal/ads/zzalo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:I

.field public zzd:I

.field public zze:I

.field public final zzf:[I

.field private final zzg:Lcom/google/android/gms/internal/ads/zzer;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzf:[I

    new-instance v1, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzg:Lcom/google/android/gms/internal/ads/zzer;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zza:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzb:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zze:I

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaev;J)Z
    .locals 9

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzm()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzg:Lcom/google/android/gms/internal/ads/zzer;

    const/4 v3, 0x4

    .line 2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    :goto_1
    const-wide/16 v4, -0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v5

    const-wide/16 v7, 0x4

    add-long/2addr v5, v7

    cmp-long v5, v5, p2

    if-ltz v5, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v5

    .line 3
    invoke-static {p1, v5, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzaey;->zze(Lcom/google/android/gms/internal/ads/zzaev;[BIIZ)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v4

    const-wide/32 v6, 0x4f676753

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    return v2

    .line 6
    :cond_2
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v5

    cmp-long v0, v5, p2

    if-gez v0, :cond_5

    .line 7
    :cond_4
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzd(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    :cond_5
    return v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaev;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzalo;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzg:Lcom/google/android/gms/internal/ads/zzer;

    const/16 v1, 0x1b

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v3, v1, p2}, Lcom/google/android/gms/internal/ads/zzaey;->zze(Lcom/google/android/gms/internal/ads/zzaev;[BIIZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v1

    const-wide/32 v4, 0x4f676753

    cmp-long v1, v1, v4

    if-eqz v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    return v3

    .line 15
    :cond_1
    const-string p1, "unsupported bit stream revision"

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zza:I

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzE()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzb:J

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzA()J

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzA()J

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzA()J

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzc:I

    add-int/lit8 v2, v1, 0x1b

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzd:I

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzc:I

    .line 14
    invoke-static {p1, v1, v3, v2, p2}, Lcom/google/android/gms/internal/ads/zzaey;->zze(Lcom/google/android/gms/internal/ads/zzaev;[BIIZ)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzc:I

    if-ge v3, p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzf:[I

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result p2

    aput p2, p1, v3

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zze:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zze:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v3
.end method
