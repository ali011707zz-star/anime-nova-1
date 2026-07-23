.class final Lcom/google/android/gms/internal/ads/zzakn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzagh;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzale;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzer;

.field public zzd:Lcom/google/android/gms/internal/ads/zzalf;

.field public zze:Lcom/google/android/gms/internal/ads/zzaki;

.field public zzf:I

.field public zzg:I

.field public zzh:I

.field public zzi:I

.field private final zzj:Lcom/google/android/gms/internal/ads/zzv;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzer;

.field private zzm:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzagh;Lcom/google/android/gms/internal/ads/zzalf;Lcom/google/android/gms/internal/ads/zzaki;Lcom/google/android/gms/internal/ads/zzv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zza:Lcom/google/android/gms/internal/ads/zzagh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzd:Lcom/google/android/gms/internal/ads/zzalf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzakn;->zze:Lcom/google/android/gms/internal/ads/zzaki;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzj:Lcom/google/android/gms/internal/ads/zzv;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzale;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzale;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzc:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    const/4 p4, 0x1

    .line 3
    invoke-direct {p1, p4}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzk:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzl:Lcom/google/android/gms/internal/ads/zzer;

    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzakn;->zza(Lcom/google/android/gms/internal/ads/zzalf;Lcom/google/android/gms/internal/ads/zzaki;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzalf;Lcom/google/android/gms/internal/ads/zzaki;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzd:Lcom/google/android/gms/internal/ads/zzalf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakn;->zze:Lcom/google/android/gms/internal/ads/zzaki;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zza:Lcom/google/android/gms/internal/ads/zzagh;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzj:Lcom/google/android/gms/internal/ads/zzv;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzakn;->zzc()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzq;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzd:Lcom/google/android/gms/internal/ads/zzalf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzale;->zza:Lcom/google/android/gms/internal/ads/zzaki;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaki;->zza:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzalc;->zza(I)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzald;->zzb:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzj:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzt;->zzq(Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zza:Lcom/google/android/gms/internal/ads/zzagh;

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    return-void
.end method

.method public final zzc()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzale;->zzd:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzale;->zzp:J

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzale;->zzq:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzale;->zzk:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzale;->zzo:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzale;->zzm:Lcom/google/android/gms/internal/ads/zzald;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzf:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzh:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzg:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzi:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzm:Z

    return-void
.end method

.method public final zzd()J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzm:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzd:Lcom/google/android/gms/internal/ads/zzalf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzf:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzf:I

    aget-wide v1, v0, v1

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzf:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzale;->zzi:[J

    .line 2
    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public final zze()J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzm:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzd:Lcom/google/android/gms/internal/ads/zzalf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzc:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzf:I

    aget-wide v1, v0, v1

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzale;->zzf:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzh:I

    .line 2
    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public final zzf()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzm:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzd:Lcom/google/android/gms/internal/ads/zzalf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzd:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzf:I

    aget v0, v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzale;->zzh:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzf:I

    .line 2
    aget v0, v0, v1

    return v0
.end method

.method public final zzg()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzm:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzd:Lcom/google/android/gms/internal/ads/zzalf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzg:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzf:I

    aget v0, v0, v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzale;->zzj:[Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzf:I

    .line 2
    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzakn;->zzj()Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final zzh()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzf:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzf:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzm:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzg:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzg:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzale;->zzg:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzh:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_1

    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzh:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzg:I

    return v2

    :cond_1
    return v1
.end method

.method public final zzi(II)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzakn;->zzj()Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzald;->zzd:I

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzale;->zzn:Lcom/google/android/gms/internal/ads/zzer;

    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzald;->zze:[B

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzl:Lcom/google/android/gms/internal/ads/zzer;

    .line 3
    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    move-object v0, v2

    move v2, v3

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzf:I

    .line 4
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzale;->zzb(I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    move v6, v5

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzk:Lcom/google/android/gms/internal/ads/zzer;

    if-eq v5, v6, :cond_4

    move v8, v1

    goto :goto_2

    :cond_4
    const/16 v8, 0x80

    :goto_2
    or-int/2addr v8, v2

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v9

    int-to-byte v8, v8

    .line 5
    aput-byte v8, v9, v1

    .line 6
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzakn;->zza:Lcom/google/android/gms/internal/ads/zzagh;

    .line 7
    invoke-interface {v8, v7, v5, v5}, Lcom/google/android/gms/internal/ads/zzagh;->zzd(Lcom/google/android/gms/internal/ads/zzer;II)V

    .line 8
    invoke-interface {v8, v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzagh;->zzd(Lcom/google/android/gms/internal/ads/zzer;II)V

    if-nez v6, :cond_5

    add-int/2addr v2, v5

    return v2

    :cond_5
    const/4 v0, 0x6

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/16 v9, 0x8

    if-nez v4, :cond_6

    int-to-byte p2, p2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzc:Lcom/google/android/gms/internal/ads/zzer;

    .line 9
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    .line 10
    aput-byte v1, v4, v1

    .line 11
    aput-byte v5, v4, v5

    .line 12
    aput-byte v1, v4, v7

    .line 13
    aput-byte p2, v4, v6

    shr-int/lit8 p2, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x4

    .line 14
    aput-byte p2, v4, v1

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x5

    .line 15
    aput-byte p2, v4, v1

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 16
    aput-byte p2, v4, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x7

    .line 17
    aput-byte p1, v4, p2

    .line 18
    invoke-interface {v8, v3, v9, v5}, Lcom/google/android/gms/internal/ads/zzagh;->zzd(Lcom/google/android/gms/internal/ads/zzer;II)V

    add-int/lit8 v2, v2, 0x9

    return v2

    :cond_6
    add-int/2addr v2, v5

    iget-object p1, v3, Lcom/google/android/gms/internal/ads/zzale;->zzn:Lcom/google/android/gms/internal/ads/zzer;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v3

    const/4 v4, -0x2

    .line 20
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    mul-int/2addr v3, v0

    add-int/2addr v3, v7

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzc:Lcom/google/android/gms/internal/ads/zzer;

    .line 21
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    .line 22
    invoke-virtual {p1, v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    .line 23
    aget-byte p1, v4, v7

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v9

    aget-byte v1, v4, v6

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 24
    aput-byte p2, v4, v7

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 25
    aput-byte p1, v4, v6

    move-object p1, v0

    .line 26
    :cond_7
    invoke-interface {v8, p1, v3, v5}, Lcom/google/android/gms/internal/ads/zzagh;->zzd(Lcom/google/android/gms/internal/ads/zzer;II)V

    add-int/2addr v2, v3

    return v2
.end method

.method public final zzj()Lcom/google/android/gms/internal/ads/zzald;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzm:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzb:Lcom/google/android/gms/internal/ads/zzale;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzale;->zza:Lcom/google/android/gms/internal/ads/zzaki;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaki;->zza:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzale;->zzm:Lcom/google/android/gms/internal/ads/zzald;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzd:Lcom/google/android/gms/internal/ads/zzalf;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzalc;->zza(I)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzald;->zza:Z

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method

.method final synthetic zzk()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzm:Z

    return v0
.end method

.method final synthetic zzl(Z)V
    .locals 0

    .line 0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzm:Z

    return-void
.end method
