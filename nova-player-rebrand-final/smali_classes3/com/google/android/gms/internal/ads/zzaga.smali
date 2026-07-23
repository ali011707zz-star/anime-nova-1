.class public final Lcom/google/android/gms/internal/ads/zzaga;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeu;


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Ljava/lang/String;

.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzaex;

.field private zzg:Lcom/google/android/gms/internal/ads/zzagh;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaga;->zza:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzb:I

    if-eq v4, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzb:I

    .line 2
    new-instance v4, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzael;

    .line 3
    invoke-virtual {p1, v5, v2, v3, v2}, Lcom/google/android/gms/internal/ads/zzael;->zzh([BIIZ)Z

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result p1

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public synthetic zzb()Ljava/util/List;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaeu$-CC;->$default$zzb(Lcom/google/android/gms/internal/ads/zzaeu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaex;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    const/16 v0, 0x400

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzg:Lcom/google/android/gms/internal/ads/zzagh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzt;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzc:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaex;->zzv()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzagb;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzagb;-><init>(J)V

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zze:I

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 9

    .line 1
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zze:I

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    return v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 4
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzg:Lcom/google/android/gms/internal/ads/zzagh;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x400

    .line 1
    invoke-interface {p2, p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzagh;->zza(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v0, :cond_2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zze:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzg:Lcom/google/android/gms/internal/ads/zzagh;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzd:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    .line 2
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzd:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzd:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzd:I

    :goto_0
    return p2
.end method

.method public final zze(JJ)V
    .locals 0

    .line 0
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zze:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zze:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzd:I

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
