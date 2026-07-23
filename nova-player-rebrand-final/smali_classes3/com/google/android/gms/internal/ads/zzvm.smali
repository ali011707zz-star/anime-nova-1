.class public final Lcom/google/android/gms/internal/ads/zzvm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxd;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzafa;

.field private zzb:Lcom/google/android/gms/internal/ads/zzaeu;

.field private zzc:Lcom/google/android/gms/internal/ads/zzaev;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzafa;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvm;->zza:Lcom/google/android/gms/internal/ads/zzafa;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzj;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/gms/internal/ads/zzaex;)V
    .locals 7

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzael;

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzael;-><init>(Lcom/google/android/gms/internal/ads/zzj;JJ)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzc:Lcom/google/android/gms/internal/ads/zzaev;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzb:Lcom/google/android/gms/internal/ads/zzaeu;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvm;->zza:Lcom/google/android/gms/internal/ads/zzafa;

    .line 2
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzafa;->zzb(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzaeu;

    move-result-object p1

    .line 3
    array-length p3, p1

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzguf;->zzv(I)Lcom/google/android/gms/internal/ads/zzguc;

    move-result-object p4

    const/4 p5, 0x0

    const/4 p6, 0x1

    if-ne p3, p6, :cond_1

    .line 18
    aget-object p1, p1, p5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzb:Lcom/google/android/gms/internal/ads/zzaeu;

    goto :goto_6

    :cond_1
    move p7, p5

    :goto_0
    if-ge p7, p3, :cond_7

    .line 5
    aget-object v0, p1, p7

    .line 6
    :try_start_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaeu;->zza(Lcom/google/android/gms/internal/ads/zzaev;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzb:Lcom/google/android/gms/internal/ads/zzaeu;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {p6}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .line 7
    :cond_2
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaeu;->zzb()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzguc;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzguc;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzb:Lcom/google/android/gms/internal/ads/zzaeu;

    if-nez v0, :cond_3

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    move v0, p6

    goto :goto_2

    :cond_4
    move v0, p5

    .line 9
    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    goto :goto_4

    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzb:Lcom/google/android/gms/internal/ads/zzaeu;

    if-nez p2, :cond_5

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide p2

    cmp-long p2, p2, v3

    if-nez p2, :cond_6

    :cond_5
    move p5, p6

    .line 9
    :cond_6
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    .line 17
    throw p1

    .line 10
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzb:Lcom/google/android/gms/internal/ads/zzaeu;

    if-nez v0, :cond_3

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_4

    goto :goto_1

    :goto_4
    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    :cond_7
    :goto_5
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzb:Lcom/google/android/gms/internal/ads/zzaeu;

    if-eqz p3, :cond_8

    .line 18
    :goto_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzb:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 19
    invoke-interface {p1, p8}, Lcom/google/android/gms/internal/ads/zzaeu;->zzc(Lcom/google/android/gms/internal/ads/zzaex;)V

    return-void

    .line 10
    :cond_8
    new-instance p3, Lcom/google/android/gms/internal/ads/zzyo;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzguf;->zzr([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    sget-object p5, Lcom/google/android/gms/internal/ads/zzvl;->zza:Lcom/google/android/gms/internal/ads/zzvl;

    .line 13
    invoke-static {p1, p5}, Lcom/google/android/gms/internal/ads/zzgvf;->zzc(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgqt;)Ljava/util/List;

    move-result-object p1

    .line 14
    const-string p5, ", "

    invoke-static {p1, p5}, Lcom/google/android/gms/internal/ads/zzgqw;->zzd(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p5

    new-instance p6, Ljava/lang/StringBuilder;

    add-int/lit8 p5, p5, 0x3a

    invoke-direct {p6, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p5, "None of the available extractors ("

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzguc;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p4

    invoke-direct {p3, p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzyo;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V

    throw p3
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzb:Lcom/google/android/gms/internal/ads/zzaeu;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaeu;->zzf()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzb:Lcom/google/android/gms/internal/ads/zzaeu;

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzc:Lcom/google/android/gms/internal/ads/zzaev;

    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzb:Lcom/google/android/gms/internal/ads/zzaeu;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzajp;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzajp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajp;->zzh()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzd()J
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzc:Lcom/google/android/gms/internal/ads/zzaev;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zze(JJ)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzb:Lcom/google/android/gms/internal/ads/zzaeu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaeu;->zze(JJ)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzb:Lcom/google/android/gms/internal/ads/zzaeu;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzc:Lcom/google/android/gms/internal/ads/zzaev;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
