.class public final Lcom/google/android/gms/internal/ads/zzafh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:I

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:I

.field public final zzi:I

.field public final zzj:J

.field public final zzk:Lcom/google/android/gms/internal/ads/zzafg;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzap;


# direct methods
.method constructor <init>(IIIIIIIJLcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzd:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzafh;->zze:I

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzafh;->zzf(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzf:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzg:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzh:I

    invoke-static {p7}, Lcom/google/android/gms/internal/ads/zzafh;->zzg(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzi:I

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzj:J

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzk:Lcom/google/android/gms/internal/ads/zzafg;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzl:Lcom/google/android/gms/internal/ads/zzap;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeq;

    array-length v1, p1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzeq;-><init>([BI)V

    mul-int/lit8 p2, p2, 0x8

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzeq;->zzf(I)V

    const/16 p1, 0x10

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzafh;->zza:I

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzb:I

    const/16 p1, 0x18

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzc:I

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzd:I

    const/16 p1, 0x14

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zze:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafh;->zzf(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzf:I

    const/4 p1, 0x3

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzg:I

    const/4 p1, 0x5

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzh:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafh;->zzg(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzi:I

    const/16 p1, 0x24

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeq;->zzk(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzj:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzk:Lcom/google/android/gms/internal/ads/zzafg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzl:Lcom/google/android/gms/internal/ads/zzap;

    return-void
.end method

.method private static zzf(I)I
    .locals 0

    .line 0
    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    const/4 p0, 0x2

    return p0

    :sswitch_2
    const/16 p0, 0xb

    return p0

    :sswitch_3
    const/4 p0, 0x1

    return p0

    :sswitch_4
    const/16 p0, 0xa

    return p0

    :sswitch_5
    const/16 p0, 0x9

    return p0

    :sswitch_6
    const/16 p0, 0x8

    return p0

    :sswitch_7
    const/4 p0, 0x7

    return p0

    :sswitch_8
    const/4 p0, 0x6

    return p0

    :sswitch_9
    const/4 p0, 0x5

    return p0

    :sswitch_a
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method

.method private static zzg(I)I
    .locals 1

    .line 0
    const/16 v0, 0x8

    if-eq p0, v0, :cond_5

    const/16 v0, 0xc

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x14

    if-eq p0, v0, :cond_2

    const/16 v0, 0x18

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final zza()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzj:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafh;->zze:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzb(J)J
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafh;->zze:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzj:J

    const-wide/32 v2, 0xf4240

    div-long/2addr p1, v2

    const-wide/16 v2, -0x1

    add-long/2addr v0, v2

    .line 2
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzc([BLcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzv;
    .locals 3

    const/4 v0, 0x4

    const/16 v1, -0x80

    .line 1
    aput-byte v1, p1, v0

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzafh;->zzd(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzt;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    const-string v1, "audio/flac"

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzd:I

    if-gtz v1, :cond_0

    const/4 v1, -0x1

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzn(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzg:I

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzE(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zze:I

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzh:I

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzz(ILjava/nio/ByteOrder;)I

    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzG(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 10
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    .line 11
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzt;->zzk(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzt;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzl:Lcom/google/android/gms/internal/ads/zzap;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzap;->zzf(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzafg;)Lcom/google/android/gms/internal/ads/zzafh;
    .locals 12

    .line 0
    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzl:Lcom/google/android/gms/internal/ads/zzap;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafh;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzb:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzc:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzd:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzafh;->zze:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzg:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzh:I

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzj:J

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzafh;-><init>(IIIIIIIJLcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzap;)V

    return-object v0
.end method
