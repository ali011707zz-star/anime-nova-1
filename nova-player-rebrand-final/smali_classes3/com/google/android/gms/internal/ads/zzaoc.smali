.class public final Lcom/google/android/gms/internal/ads/zzaoc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaod;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzer;

.field private zzc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaod;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "audio/ac3"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zza:Lcom/google/android/gms/internal/ads/zzaod;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzael;

    .line 2
    invoke-virtual {v5, v4, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzael;->zzh([BIIZ)Z

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzx()I

    move-result v4

    const v6, 0x494433

    if-eq v4, v6, :cond_4

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzael;

    .line 9
    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzael;->zzj(IZ)Z

    move v1, v2

    move v5, v3

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v6

    const/4 v7, 0x6

    .line 10
    invoke-virtual {v4, v6, v2, v7, v2}, Lcom/google/android/gms/internal/ads/zzael;->zzh([BIIZ)Z

    .line 11
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v6

    const/16 v7, 0xb77

    if-eq v6, v7, :cond_1

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    add-int/lit8 v5, v5, 0x1

    sub-int v1, v5, v3

    const/16 v6, 0x2000

    if-ge v1, v6, :cond_0

    .line 14
    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzael;->zzj(IZ)Z

    move v1, v2

    goto :goto_1

    :cond_0
    return v2

    :cond_1
    const/4 v6, 0x1

    add-int/2addr v1, v6

    const/4 v7, 0x4

    if-lt v1, v7, :cond_2

    return v6

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v6

    .line 15
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzadv;->zzd([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v6, v6, -0x6

    .line 16
    invoke-virtual {v4, v6, v2}, Lcom/google/android/gms/internal/ads/zzael;->zzj(IZ)Z

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    .line 5
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzG()I

    move-result v4

    add-int/lit8 v6, v4, 0xa

    add-int/2addr v3, v6

    .line 7
    invoke-virtual {v5, v4, v2}, Lcom/google/android/gms/internal/ads/zzael;->zzj(IZ)Z

    goto :goto_0
.end method

.method public synthetic zzb()Ljava/util/List;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaeu$-CC;->$default$zzb(Lcom/google/android/gms/internal/ads/zzaeu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaex;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqb;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaqb;-><init>(III)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zza:Lcom/google/android/gms/internal/ads/zzaod;

    .line 2
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzaod;->zzb(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzaqb;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaex;->zzv()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafx;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    .line 4
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(JJ)V

    .line 5
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v0

    const/16 v1, 0xae2

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaev;->zza([BII)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzc:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zza:Lcom/google/android/gms/internal/ads/zzaod;

    const-wide/16 v0, 0x0

    const/4 v3, 0x4

    .line 4
    invoke-virtual {p1, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzaod;->zzc(JI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzc:Z

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zza:Lcom/google/android/gms/internal/ads/zzaod;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaod;->zzd(Lcom/google/android/gms/internal/ads/zzer;)V

    return v2
.end method

.method public final zze(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzc:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zza:Lcom/google/android/gms/internal/ads/zzaod;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaod;->zza()V

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
