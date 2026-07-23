.class public final Lcom/google/android/gms/internal/ads/zzbd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public zza:Ljava/lang/Object;

.field public zzb:Ljava/lang/Object;

.field public zzc:I

.field public zzd:J

.field public zze:J

.field public zzf:Z

.field public zzg:Lcom/google/android/gms/internal/ads/zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x24

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x2

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x3

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x4

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzc;->zza:Lcom/google/android/gms/internal/ads/zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzg:Lcom/google/android/gms/internal/ads/zzc;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbd;->zza:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzbd;->zza:Ljava/lang/Object;

    .line 3
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzb:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzbd;->zzb:Ljava/lang/Object;

    .line 4
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzd:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzbd;->zzd:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzf:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzbd;->zzf:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzg:Lcom/google/android/gms/internal/ads/zzc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbd;->zzg:Lcom/google/android/gms/internal/ads/zzc;

    .line 5
    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbd;->zza:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzb:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzd:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    mul-int/lit8 v0, v0, 0x1f

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzf:Z

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzg:Lcom/google/android/gms/internal/ads/zzc;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzc;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/gms/internal/ads/zzc;Z)Lcom/google/android/gms/internal/ads/zzbd;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbd;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzb:Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzd:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbd;->zze:J

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzg:Lcom/google/android/gms/internal/ads/zzc;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzf:Z

    return-object p0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzg:Lcom/google/android/gms/internal/ads/zzc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzc;->zzb:I

    const/4 v0, 0x0

    return v0
.end method

.method public final zzc(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzg:Lcom/google/android/gms/internal/ads/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzc;->zza(I)Lcom/google/android/gms/internal/ads/zza;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zza;->zza:J

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzd(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzg:Lcom/google/android/gms/internal/ads/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzc;->zza(I)Lcom/google/android/gms/internal/ads/zza;

    move-result-object p1

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zza;->zza(I)I

    move-result p1

    return p1
.end method

.method public final zze(J)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzg:Lcom/google/android/gms/internal/ads/zzc;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzc;->zzb(I)Z

    return p2
.end method

.method public final zzf(J)I
    .locals 0

    .line 0
    const/4 p1, -0x1

    return p1
.end method

.method public final zzg(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzg:Lcom/google/android/gms/internal/ads/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzc;->zza(I)Lcom/google/android/gms/internal/ads/zza;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zza;->zzb:I

    return p1
.end method

.method public final zzh(II)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzg:Lcom/google/android/gms/internal/ads/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzc;->zza(I)Lcom/google/android/gms/internal/ads/zza;

    move-result-object p1

    .line 2
    iget v0, p1, Lcom/google/android/gms/internal/ads/zza;->zzb:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zza;->zzf:[J

    aget-wide v0, p1, p2

    return-wide v0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public final zzi(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbd;->zzb()I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzg:Lcom/google/android/gms/internal/ads/zzc;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzc;->zzb(I)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzj()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzg:Lcom/google/android/gms/internal/ads/zzc;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzc;->zzc:J

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzk(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzg:Lcom/google/android/gms/internal/ads/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzc;->zza(I)Lcom/google/android/gms/internal/ads/zza;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zza;->zzj:Z

    const/4 p1, 0x0

    return p1
.end method
