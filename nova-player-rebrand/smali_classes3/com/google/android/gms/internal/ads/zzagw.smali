.class final Lcom/google/android/gms/internal/ads/zzagw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzagv;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzagh;

.field private final zzc:I

.field private final zzd:I

.field private final zze:J

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:J

.field private zzm:[J

.field private zzn:[I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/internal/ads/zzagh;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzagw;->zza:Lcom/google/android/gms/internal/ads/zzagv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzagv;->zzc()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    if-ne v0, v1, :cond_2

    const/high16 v2, 0x63640000

    goto :goto_1

    :cond_2
    const/high16 v2, 0x62770000

    :goto_1
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzagw;->zzj(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzc:I

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzagv;->zzd()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzagw;->zze:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    if-ne v0, v1, :cond_3

    const/high16 p3, 0x62640000

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzagw;->zzj(II)I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    :goto_2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzd:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzl:J

    const/16 p1, 0x200

    new-array p3, p1, [J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzm:[J

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzn:[I

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzagv;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzf:I

    return-void
.end method

.method private final zzh(I)J
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzf:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzagw;->zze:J

    int-to-long v4, p1

    mul-long/2addr v2, v4

    div-long/2addr v2, v0

    return-wide v2
.end method

.method private final zzi(I)Lcom/google/android/gms/internal/ads/zzafz;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzafz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzn:[I

    aget v1, v1, p1

    int-to-long v1, v1

    const/4 v3, 0x1

    .line 2
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzagw;->zzh(I)J

    move-result-wide v3

    mul-long/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzm:[J

    .line 3
    aget-wide v4, v3, p1

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(JJ)V

    return-object v0
.end method

.method private static zzj(II)I
    .locals 1

    .line 0
    div-int/lit8 v0, p0, 0xa

    rem-int/lit8 p0, p0, 0xa

    add-int/lit8 p0, p0, 0x30

    shl-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x30

    or-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final zza(JZ)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzl:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzl:J

    :cond_0
    if-eqz p3, :cond_2

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzk:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzn:[I

    array-length v0, v0

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzm:[J

    .line 2
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzm:[J

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzn:[I

    .line 3
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzn:[I

    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzm:[J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzk:I

    .line 4
    aput-wide p1, p3, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzn:[I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzj:I

    .line 5
    aput p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzk:I

    :cond_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzj:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzj:I

    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzm:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzk:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzm:[J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzn:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzk:I

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzn:[I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzc:I

    const/high16 v1, 0x62770000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zza:Lcom/google/android/gms/internal/ads/zzagv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzagv;->zzf:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzk:I

    if-lez v0, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzf:I

    :cond_0
    return-void
.end method

.method public final zzc(I)Z
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzc:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzd:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zzd(I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzg:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzh:I

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 10

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzh:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzagh;->zza(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzh:I

    const/4 p1, 0x1

    if-nez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzg:I

    if-lez v3, :cond_2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzi:I

    .line 2
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzagw;->zzh(I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzn:[I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzi:I

    .line 3
    invoke-static {v5, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    if-ltz v5, :cond_1

    move v2, p1

    :cond_1
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzg:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v8, v3

    move v4, v2

    move-wide v2, v8

    .line 4
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzi:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzi:I

    :cond_3
    return v0
.end method

.method public final zzf(J)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzk:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzi:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzm:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzm([JJZZ)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzn:[I

    .line 2
    aget p1, p2, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzi:I

    return-void
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzafw;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzk:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzagw;->zzh(I)J

    move-result-wide v1

    .line 2
    div-long/2addr p1, v1

    long-to-int p1, p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzn:[I

    .line 3
    invoke-static {p2, p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl([IIZZ)I

    move-result p2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzn:[I

    .line 4
    aget v1, v1, p2

    if-ne v1, p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzafw;

    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzagw;->zzi(I)Lcom/google/android/gms/internal/ads/zzafz;

    move-result-object p2

    .line 6
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafz;)V

    return-object p1

    .line 7
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzagw;->zzi(I)Lcom/google/android/gms/internal/ads/zzafz;

    move-result-object p1

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzm:[J

    .line 8
    array-length v0, v0

    if-ge p2, v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafw;

    .line 9
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzagw;->zzi(I)Lcom/google/android/gms/internal/ads/zzafz;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafz;)V

    return-object v0

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzafw;

    .line 10
    invoke-direct {p2, p1, p1}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafz;)V

    return-object p2

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzafw;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzafz;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzl:J

    .line 11
    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(JJ)V

    .line 12
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafz;)V

    return-object p1
.end method
