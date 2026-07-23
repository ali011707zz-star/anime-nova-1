.class final Lcom/google/android/gms/internal/ads/zzln;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzwi;

.field public final zzb:Ljava/lang/Object;

.field public final zzc:[Lcom/google/android/gms/internal/ads/zzyc;

.field public zzd:Z

.field public zze:Z

.field public zzf:Z

.field public zzg:Lcom/google/android/gms/internal/ads/zzlo;

.field public zzh:Z

.field private final zzi:[Z

.field private final zzj:[Lcom/google/android/gms/internal/ads/zzmn;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzaaj;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzmc;

.field private zzm:Lcom/google/android/gms/internal/ads/zzln;

.field private zzn:Lcom/google/android/gms/internal/ads/zzyn;

.field private zzo:Lcom/google/android/gms/internal/ads/zzaak;

.field private zzp:J


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzmn;JLcom/google/android/gms/internal/ads/zzaaj;Lcom/google/android/gms/internal/ads/zzaan;Lcom/google/android/gms/internal/ads/zzmc;Lcom/google/android/gms/internal/ads/zzlo;Lcom/google/android/gms/internal/ads/zzaak;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzln;->zzj:[Lcom/google/android/gms/internal/ads/zzmn;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzln;->zzp:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzln;->zzk:Lcom/google/android/gms/internal/ads/zzaaj;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzln;->zzl:Lcom/google/android/gms/internal/ads/zzmc;

    iget-object p1, p7, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzln;->zzb:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzyn;->zza:Lcom/google/android/gms/internal/ads/zzyn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzln;->zzn:Lcom/google/android/gms/internal/ads/zzyn;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzln;->zzo:Lcom/google/android/gms/internal/ads/zzaak;

    const/4 p2, 0x2

    new-array p3, p2, [Lcom/google/android/gms/internal/ads/zzyc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzln;->zzc:[Lcom/google/android/gms/internal/ads/zzyc;

    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzln;->zzi:[Z

    iget-wide p2, p7, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    iget-wide p9, p7, Lcom/google/android/gms/internal/ads/zzlo;->zzd:J

    .line 2
    invoke-virtual {p6, p1, p5, p2, p3}, Lcom/google/android/gms/internal/ads/zzmc;->zze(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzaan;J)Lcom/google/android/gms/internal/ads/zzwi;

    move-result-object p5

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p9, p1

    if-eqz p1, :cond_0

    new-instance p4, Lcom/google/android/gms/internal/ads/zzvo;

    const/4 p6, 0x1

    const-wide/16 p7, 0x0

    invoke-direct/range {p4 .. p10}, Lcom/google/android/gms/internal/ads/zzvo;-><init>(Lcom/google/android/gms/internal/ads/zzwi;ZJJ)V

    move-object p5, p4

    :cond_0
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzln;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    return-void
.end method

.method private final zzu()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzln;->zzw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzln;->zzo:Lcom/google/android/gms/internal/ads/zzaak;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaak;->zza:I

    if-ge v0, v2, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaak;->zza(I)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzln;->zzo:Lcom/google/android/gms/internal/ads/zzaak;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaak;->zzc:[Lcom/google/android/gms/internal/ads/zzaac;

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzv()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzln;->zzw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzln;->zzo:Lcom/google/android/gms/internal/ads/zzaak;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaak;->zza:I

    if-ge v0, v2, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaak;->zza(I)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzln;->zzo:Lcom/google/android/gms/internal/ads/zzaak;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaak;->zzc:[Lcom/google/android/gms/internal/ads/zzaac;

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzw()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzm:Lcom/google/android/gms/internal/ads/zzln;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzp:J

    return-wide v0
.end method

.method public final zzb(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzln;->zzp:J

    return-void
.end method

.method public final zzc()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzln;->zzp:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzd()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zze:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzf:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzi()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public final zze()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zze:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzln;->zzd()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzln;->zzf()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    sub-long/2addr v3, v5

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public final zzf()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zze:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzf:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzi()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    .line 3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzlo;->zze:J

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method public final zzg()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zze:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh(FLcom/google/android/gms/internal/ads/zzbf;Z)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zze:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzd()Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzn:Lcom/google/android/gms/internal/ads/zzyn;

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzln;->zzk(FLcom/google/android/gms/internal/ads/zzbf;Z)Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    .line 3
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    .line 4
    iget-wide p2, p2, Lcom/google/android/gms/internal/ads/zzlo;->zze:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    const-wide/16 v0, -0x1

    add-long/2addr p2, v0

    const-wide/16 v0, 0x0

    .line 5
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzln;->zzl(Lcom/google/android/gms/internal/ads/zzaak;JZ)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzp:J

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    .line 7
    iget-wide v2, p3, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    sub-long/2addr v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzp:J

    .line 8
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzlo;->zza(J)Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    return-void
.end method

.method public final zzi(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzln;->zzw()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zze:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzln;->zzp:J

    sub-long/2addr p1, v1

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwi;->zzg(J)V

    :cond_0
    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzll;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzln;->zzw()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwi;->zzm(Lcom/google/android/gms/internal/ads/zzll;)Z

    return-void
.end method

.method public final zzk(FLcom/google/android/gms/internal/ads/zzbf;Z)Lcom/google/android/gms/internal/ads/zzaak;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzln;->zzn:Lcom/google/android/gms/internal/ads/zzyn;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzk:Lcom/google/android/gms/internal/ads/zzaaj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzln;->zzj:[Lcom/google/android/gms/internal/ads/zzmn;

    invoke-virtual {v0, v1, p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzaaj;->zzq([Lcom/google/android/gms/internal/ads/zzmn;Lcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzbf;)Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaak;->zza:I

    if-ge p3, v0, :cond_3

    .line 2
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzaak;->zza(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaak;->zzc:[Lcom/google/android/gms/internal/ads/zzaac;

    .line 3
    aget-object v0, v0, p3

    if-nez v0, :cond_0

    aget-object v0, v1, p3

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmn;->zza()I

    move v2, p2

    .line 3
    :cond_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    goto :goto_2

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaak;->zzc:[Lcom/google/android/gms/internal/ads/zzaac;

    .line 5
    aget-object v0, v0, p3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, p2

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzaak;->zzc:[Lcom/google/android/gms/internal/ads/zzaac;

    .line 6
    array-length v0, p3

    :goto_3
    if-ge p2, v0, :cond_4

    aget-object v1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    return-object p1
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzaak;JZ)J
    .locals 6

    const/4 p4, 0x2

    .line 1
    new-array v5, p4, [Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzln;->zzm(Lcom/google/android/gms/internal/ads/zzaak;JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzaak;JZ[Z)J
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzaak;->zza:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzln;->zzi:[Z

    if-nez p4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzln;->zzo:Lcom/google/android/gms/internal/ads/zzaak;

    invoke-virtual {p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzaak;->zzb(Lcom/google/android/gms/internal/ads/zzaak;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzln;->zzj:[Lcom/google/android/gms/internal/ads/zzmn;

    const/4 v4, 0x2

    if-ge v1, v4, :cond_2

    .line 2
    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzmn;->zza()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzln;->zzv()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzln;->zzo:Lcom/google/android/gms/internal/ads/zzaak;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzln;->zzu()V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzln;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzaak;->zzc:[Lcom/google/android/gms/internal/ads/zzaac;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzln;->zzi:[Z

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzln;->zzc:[Lcom/google/android/gms/internal/ads/zzyc;

    move-wide v10, p2

    move-object/from16 v9, p5

    .line 5
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzwi;->zze([Lcom/google/android/gms/internal/ads/zzaac;[Z[Lcom/google/android/gms/internal/ads/zzyc;[ZJ)J

    move-result-wide p2

    move v1, v0

    :goto_3
    if-ge v1, v4, :cond_3

    .line 6
    aget-object v5, v2, v1

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzmn;->zza()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzf:Z

    move v1, v0

    :goto_4
    if-ge v1, v4, :cond_6

    aget-object v5, v8, v1

    if-eqz v5, :cond_4

    .line 7
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaak;->zza(I)Z

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    aget-object v5, v2, v1

    .line 8
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzmn;->zza()I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzln;->zzf:Z

    goto :goto_6

    .line 9
    :cond_4
    aget-object v5, v6, v1

    if-nez v5, :cond_5

    move v5, v3

    goto :goto_5

    :cond_5
    move v5, v0

    :goto_5
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    return-wide p2
.end method

.method public final zzn()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzln;->zzv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    :try_start_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzvo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzln;->zzl:Lcom/google/android/gms/internal/ads/zzmc;

    if-eqz v1, :cond_0

    .line 2
    :try_start_1
    check-cast v0, Lcom/google/android/gms/internal/ads/zzvo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzmc;->zzf(Lcom/google/android/gms/internal/ads/zzwi;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzmc;->zzf(Lcom/google/android/gms/internal/ads/zzwi;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_0
    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    .line 4
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzln;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzm:Lcom/google/android/gms/internal/ads/zzln;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzln;->zzv()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzln;->zzm:Lcom/google/android/gms/internal/ads/zzln;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzln;->zzu()V

    return-void
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzln;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzm:Lcom/google/android/gms/internal/ads/zzln;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/internal/ads/zzyn;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzn:Lcom/google/android/gms/internal/ads/zzyn;

    return-object v0
.end method

.method public final zzr()Lcom/google/android/gms/internal/ads/zzaak;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzo:Lcom/google/android/gms/internal/ads/zzaak;

    return-object v0
.end method

.method public final zzs()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzvo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzlo;->zzd:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    .line 2
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zzvo;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzvo;->zza(JJ)V

    :cond_1
    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzwh;J)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzln;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwi;->zzb(Lcom/google/android/gms/internal/ads/zzwh;J)V

    return-void
.end method
