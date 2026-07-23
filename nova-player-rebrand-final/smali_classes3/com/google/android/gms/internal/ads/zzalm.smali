.class public final Lcom/google/android/gms/internal/ads/zzalm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeu;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzaex;

.field private zzb:Lcom/google/android/gms/internal/ads/zzalt;

.field private zzc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzalo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzalo;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzalo;->zzc(Lcom/google/android/gms/internal/ads/zzaev;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzalo;->zza:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzalo;->zze:I

    const/16 v2, 0x8

    .line 3
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    .line 5
    invoke-interface {p1, v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzalk;

    .line 16
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzalk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzb:Lcom/google/android/gms/internal/ads/zzalt;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 11
    :try_start_0
    invoke-static {v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzagn;->zzd(ILcom/google/android/gms/internal/ads/zzer;Z)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzat; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzalv;

    .line 15
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzalv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzb:Lcom/google/android/gms/internal/ads/zzalt;

    goto :goto_0

    .line 12
    :catch_0
    :cond_2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 13
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzalq;->zzd(Lcom/google/android/gms/internal/ads/zzer;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/ads/zzalq;

    .line 14
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzalq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzb:Lcom/google/android/gms/internal/ads/zzalt;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzalm;->zzh(Lcom/google/android/gms/internal/ads/zzaev;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzat; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic zzb()Ljava/util/List;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaeu$-CC;->$default$zzb(Lcom/google/android/gms/internal/ads/zzaeu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaex;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zza:Lcom/google/android/gms/internal/ads/zzaex;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zza:Lcom/google/android/gms/internal/ads/zzaex;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzb:Lcom/google/android/gms/internal/ads/zzalt;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzalm;->zzh(Lcom/google/android/gms/internal/ads/zzaev;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    goto :goto_0

    .line 1
    :cond_0
    const-string p1, "Failed to determine bitstream type"

    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzc:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zza:Lcom/google/android/gms/internal/ads/zzaex;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zza:Lcom/google/android/gms/internal/ads/zzaex;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzv()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzb:Lcom/google/android/gms/internal/ads/zzalt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzalm;->zza:Lcom/google/android/gms/internal/ads/zzaex;

    .line 6
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzalt;->zze(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzagh;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzc:Z

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzb:Lcom/google/android/gms/internal/ads/zzalt;

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzalt;->zzg(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result p1

    return p1
.end method

.method public final zze(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzb:Lcom/google/android/gms/internal/ads/zzalt;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzalt;->zzf(JJ)V

    :cond_0
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
