.class final Lcom/google/android/gms/internal/ads/zzidf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidu;


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/ads/zzidc;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:[I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Lcom/google/android/gms/internal/ads/zzief;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzibc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzidf;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zziem;->zzs()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzidf;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzidc;Z[IIILcom/google/android/gms/internal/ads/zzidi;Lcom/google/android/gms/internal/ads/zzico;Lcom/google/android/gms/internal/ads/zzief;Lcom/google/android/gms/internal/ads/zzibc;Lcom/google/android/gms/internal/ads/zzicx;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzidf;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzf:I

    instance-of p1, p5, Lcom/google/android/gms/internal/ads/zzibr;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzi:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzh:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzj:[I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzk:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzl:I

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzm:Lcom/google/android/gms/internal/ads/zzief;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzn:Lcom/google/android/gms/internal/ads/zzibc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzg:Lcom/google/android/gms/internal/ads/zzidc;

    return-void
.end method

.method private final zzA(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private final zzB(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static zzC(I)I
    .locals 0

    .line 0
    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static zzD(I)Z
    .locals 1

    .line 0
    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzE(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzibr;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/ads/zzibr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzaX()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static zzF(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzidf;->zzE(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzG(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzH(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzI(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zzJ(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzK(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzM(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final zzN(Ljava/lang/Object;I)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzidf;->zzB(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzidf;->zzA(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzidf;->zzC(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v6

    :cond_0
    return v5

    .line 4
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    return v6

    :cond_1
    return v5

    .line 5
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v6

    :cond_2
    return v5

    .line 6
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    return v6

    :cond_3
    return v5

    .line 7
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v6

    :cond_4
    return v5

    .line 8
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v6

    :cond_5
    return v5

    .line 9
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v6

    :cond_6
    return v5

    .line 10
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzian;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v6

    :cond_7
    return v5

    .line 11
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v6

    :cond_8
    return v5

    .line 12
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzian;

    if-eqz p2, :cond_c

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzian;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v6

    :cond_b
    return v5

    .line 26
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 17
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzh(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 18
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v6

    :cond_d
    return v5

    .line 19
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e

    return v6

    :cond_e
    return v5

    .line 20
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v6

    :cond_f
    return v5

    .line 21
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    return v6

    :cond_10
    return v5

    .line 22
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_11

    return v6

    :cond_11
    return v5

    .line 23
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzj(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v6

    :cond_12
    return v5

    .line 24
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzl(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    .line 26
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzO(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzidf;->zzB(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zziem;->zze(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzP(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzB(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzQ(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzB(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zziem;->zze(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzR(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzf:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzS(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zzS(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzc:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_0
    if-gt p2, v1, :cond_2

    add-int v3, v1, p2

    ushr-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v3, 0x3

    aget v5, v0, v4

    if-ne p1, v5, :cond_0

    return v4

    :cond_0
    if-ge p1, v5, :cond_1

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static final zzT([BIILcom/google/android/gms/internal/ads/zzies;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zziab;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzies;->zza:Lcom/google/android/gms/internal/ads/zzies;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    .line 21
    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zziac;->zzc([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/zziab;->zzb:J

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zziaq;->zzL(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    return p0

    .line 5
    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzK(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    return p0

    .line 19
    :pswitch_3
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zziac;->zzg([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result p0

    return p0

    .line 7
    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidm;->zza()Lcom/google/android/gms/internal/ads/zzidm;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzidm;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object p3

    .line 8
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/ads/zziac;->zzh(Lcom/google/android/gms/internal/ads/zzidu;[BIILcom/google/android/gms/internal/ads/zziab;)I

    move-result p0

    return p0

    .line 2
    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zziac;->zzf([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result p0

    return p0

    .line 20
    :pswitch_6
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zziac;->zzc([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/zziab;->zzb:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    return p0

    :pswitch_7
    add-int/lit8 p2, p1, 0x4

    .line 16
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zziac;->zzd([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    return p2

    :pswitch_8
    add-int/lit8 p2, p1, 0x8

    .line 15
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zziac;->zze([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    return p2

    .line 11
    :pswitch_9
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    return p0

    .line 9
    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zziac;->zzc([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/zziab;->zzb:J

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    return p0

    :pswitch_b
    add-int/lit8 p2, p1, 0x4

    .line 13
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zziac;->zzd([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    return p2

    :pswitch_c
    add-int/lit8 p2, p1, 0x8

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zziac;->zze([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    .line 18
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    return p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static final zzU(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzieu;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzieu;->zzm(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzian;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzieu;->zzn(ILcom/google/android/gms/internal/ads/zzian;)V

    return-void
.end method

.method static zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzieg;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/ads/zzibr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzieg;->zza()Lcom/google/android/gms/internal/ads/zzieg;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzieg;->zzb()Lcom/google/android/gms/internal/ads/zzieg;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    :cond_0
    return-object v0
.end method

.method static zzm(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzicz;Lcom/google/android/gms/internal/ads/zzidi;Lcom/google/android/gms/internal/ads/zzico;Lcom/google/android/gms/internal/ads/zzief;Lcom/google/android/gms/internal/ads/zzibc;Lcom/google/android/gms/internal/ads/zzicx;)Lcom/google/android/gms/internal/ads/zzidf;
    .locals 32

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzido;

    if-eqz v1, :cond_37

    check-cast v0, Lcom/google/android/gms/internal/ads/zzido;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzido;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 5
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 6
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/gms/internal/ads/zzidf;->zza:[I

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move/from16 v17, v13

    move-object/from16 v16, v7

    move/from16 v7, v17

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 9
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 10
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 11
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 12
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 13
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 14
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 15
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 16
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 17
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 18
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 19
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 20
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 21
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 22
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 23
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    .line 24
    new-array v7, v13, [I

    move v13, v12

    move v12, v9

    move v9, v13

    move v13, v10

    move/from16 v17, v14

    move/from16 v10, v16

    move-object/from16 v16, v7

    move v7, v4

    move v4, v15

    .line 7
    :goto_a
    sget-object v14, Lcom/google/android/gms/internal/ads/zzidf;->zzb:Lsun/misc/Unsafe;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzido;->zze()[Ljava/lang/Object;

    move-result-object v15

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzido;->zzb()Lcom/google/android/gms/internal/ads/zzidc;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    add-int v18, v17, v9

    add-int v9, v11, v11

    mul-int/lit8 v11, v11, 0x3

    .line 27
    new-array v11, v11, [I

    .line 28
    new-array v9, v9, [Ljava/lang/Object;

    move/from16 v21, v17

    move/from16 v22, v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v23, v4, 0x1

    .line 29
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v8, v23

    const/16 v23, 0xd

    :goto_c
    add-int/lit8 v24, v8, 0x1

    .line 30
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_15

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v23

    or-int/2addr v4, v8

    add-int/lit8 v23, v23, 0xd

    move/from16 v8, v24

    goto :goto_c

    :cond_15
    shl-int v8, v8, v23

    or-int/2addr v4, v8

    move/from16 v8, v24

    goto :goto_d

    :cond_16
    move/from16 v8, v23

    :goto_d
    add-int/lit8 v23, v8, 0x1

    .line 31
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_18

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v6, v23

    const/16 v23, 0xd

    :goto_e
    add-int/lit8 v25, v6, 0x1

    .line 32
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_17

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v23

    or-int/2addr v8, v6

    add-int/lit8 v23, v23, 0xd

    move/from16 v6, v25

    goto :goto_e

    :cond_17
    shl-int v6, v6, v23

    or-int/2addr v8, v6

    move/from16 v6, v25

    goto :goto_f

    :cond_18
    move/from16 v6, v23

    :goto_f
    and-int/lit16 v5, v8, 0x400

    if-eqz v5, :cond_19

    add-int/lit8 v5, v19, 0x1

    .line 33
    aput v20, v16, v19

    move/from16 v19, v5

    :cond_19
    and-int/lit16 v5, v8, 0xff

    move-object/from16 v25, v0

    and-int/lit16 v0, v8, 0x800

    move/from16 v26, v0

    const/16 v0, 0x33

    if-lt v5, v0, :cond_23

    add-int/lit8 v0, v6, 0x1

    .line 34
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v0

    const v0, 0xd800

    if-lt v6, v0, :cond_1b

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v30, v27

    move/from16 v27, v6

    move/from16 v6, v30

    const/16 v30, 0xd

    :goto_10
    add-int/lit8 v31, v6, 0x1

    .line 35
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v0, :cond_1a

    and-int/lit16 v0, v6, 0x1fff

    shl-int v0, v0, v30

    or-int v27, v27, v0

    add-int/lit8 v30, v30, 0xd

    move/from16 v6, v31

    const v0, 0xd800

    goto :goto_10

    :cond_1a
    shl-int v0, v6, v30

    or-int v6, v27, v0

    move/from16 v0, v31

    goto :goto_11

    :cond_1b
    move/from16 v0, v27

    :goto_11
    move/from16 v27, v0

    add-int/lit8 v0, v5, -0x33

    move/from16 v30, v2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x11

    if-ne v0, v2, :cond_1d

    :cond_1c
    const/4 v2, 0x1

    goto :goto_14

    :cond_1d
    const/16 v2, 0xc

    if-ne v0, v2, :cond_20

    .line 37
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/ads/zzido;->zzc()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1f

    if-eqz v26, :cond_1e

    goto :goto_12

    :cond_1e
    const/4 v0, 0x0

    goto :goto_15

    :cond_1f
    :goto_12
    add-int/lit8 v0, v10, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    .line 38
    aget-object v10, v15, v10

    aput-object v10, v9, v24

    :goto_13
    move v10, v0

    :cond_20
    move/from16 v0, v26

    goto :goto_15

    :goto_14
    add-int/lit8 v0, v10, 0x1

    .line 35
    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v28, v24, 0x1

    .line 36
    aget-object v2, v15, v10

    aput-object v2, v9, v28

    goto :goto_13

    :goto_15
    add-int/2addr v6, v6

    .line 39
    aget-object v2, v15, v6

    move/from16 v26, v0

    .line 40
    instance-of v0, v2, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_21

    .line 41
    check-cast v2, Ljava/lang/reflect/Field;

    :goto_16
    move/from16 v28, v6

    move v0, v7

    goto :goto_17

    .line 42
    :cond_21
    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 43
    aput-object v2, v15, v6

    goto :goto_16

    .line 44
    :goto_17
    invoke-virtual {v14, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v2, v6

    add-int/lit8 v6, v28, 0x1

    .line 45
    aget-object v7, v15, v6

    move/from16 v31, v0

    .line 46
    instance-of v0, v7, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_22

    .line 47
    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_18

    .line 48
    :cond_22
    check-cast v7, Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzidf;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 49
    aput-object v7, v15, v6

    .line 50
    :goto_18
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v28, v0

    move-object v7, v1

    move/from16 v0, v26

    move/from16 v6, v27

    const/4 v1, 0x0

    const v23, 0xd800

    goto/16 :goto_25

    :cond_23
    move/from16 v30, v2

    move/from16 v31, v7

    add-int/lit8 v0, v10, 0x1

    .line 51
    aget-object v2, v15, v10

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/16 v7, 0x9

    if-eq v5, v7, :cond_24

    const/16 v7, 0x11

    if-ne v5, v7, :cond_25

    :cond_24
    move/from16 v28, v0

    const/4 v0, 0x1

    goto/16 :goto_1d

    :cond_25
    const/16 v7, 0x1b

    if-eq v5, v7, :cond_2d

    const/16 v7, 0x31

    if-ne v5, v7, :cond_26

    add-int/lit8 v10, v10, 0x2

    move/from16 v28, v0

    const/4 v0, 0x1

    goto/16 :goto_1c

    :cond_26
    const/16 v7, 0xc

    if-eq v5, v7, :cond_2a

    const/16 v7, 0x1e

    if-eq v5, v7, :cond_2a

    const/16 v7, 0x2c

    if-ne v5, v7, :cond_27

    goto :goto_1a

    :cond_27
    const/16 v7, 0x32

    if-ne v5, v7, :cond_29

    add-int/lit8 v7, v10, 0x2

    add-int/lit8 v28, v21, 0x1

    .line 56
    aput v20, v16, v21

    div-int/lit8 v21, v20, 0x3

    .line 57
    aget-object v0, v15, v0

    add-int v21, v21, v21

    aput-object v0, v9, v21

    if-eqz v26, :cond_28

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v0, v10, 0x3

    .line 58
    aget-object v7, v15, v7

    aput-object v7, v9, v21

    move v10, v0

    move-object v7, v1

    move/from16 v21, v28

    goto :goto_1f

    :cond_28
    move v10, v7

    move/from16 v21, v28

    const/16 v26, 0x0

    :goto_19
    move-object v7, v1

    goto :goto_1f

    :cond_29
    move/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_1e

    .line 54
    :cond_2a
    :goto_1a
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/ads/zzido;->zzc()I

    move-result v7

    move/from16 v28, v0

    const/4 v0, 0x1

    if-eq v7, v0, :cond_2c

    if-eqz v26, :cond_2b

    goto :goto_1b

    :cond_2b
    move-object v7, v1

    move/from16 v10, v28

    const/16 v26, 0x0

    goto :goto_1f

    :cond_2c
    :goto_1b
    add-int/lit8 v10, v10, 0x2

    div-int/lit8 v7, v20, 0x3

    add-int/2addr v7, v7

    add-int/2addr v7, v0

    .line 55
    aget-object v24, v15, v28

    aput-object v24, v9, v7

    goto :goto_19

    :cond_2d
    move/from16 v28, v0

    const/4 v0, 0x1

    add-int/lit8 v10, v10, 0x2

    .line 66
    :goto_1c
    div-int/lit8 v7, v20, 0x3

    add-int/2addr v7, v7

    add-int/2addr v7, v0

    .line 53
    aget-object v24, v15, v28

    aput-object v24, v9, v7

    goto :goto_19

    .line 51
    :goto_1d
    div-int/lit8 v7, v20, 0x3

    add-int/2addr v7, v7

    add-int/2addr v7, v0

    .line 52
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v9, v7

    :goto_1e
    move-object v7, v1

    move/from16 v10, v28

    .line 59
    :goto_1f
    invoke-virtual {v14, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v2, v0

    and-int/lit16 v0, v8, 0x1000

    const v1, 0xfffff

    if-eqz v0, :cond_31

    const/16 v0, 0x11

    if-gt v5, v0, :cond_31

    add-int/lit8 v0, v6, 0x1

    .line 60
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v6, 0xd800

    if-lt v1, v6, :cond_2f

    and-int/lit16 v1, v1, 0x1fff

    const/16 v23, 0xd

    :goto_20
    add-int/lit8 v28, v0, 0x1

    .line 61
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_2e

    and-int/lit16 v0, v0, 0x1fff

    shl-int v0, v0, v23

    or-int/2addr v1, v0

    add-int/lit8 v23, v23, 0xd

    move/from16 v0, v28

    goto :goto_20

    :cond_2e
    shl-int v0, v0, v23

    or-int/2addr v1, v0

    goto :goto_21

    :cond_2f
    move/from16 v28, v0

    :goto_21
    add-int v0, v31, v31

    div-int/lit8 v23, v1, 0x20

    add-int v0, v0, v23

    .line 62
    aget-object v6, v15, v0

    move/from16 v29, v0

    .line 63
    instance-of v0, v6, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_30

    .line 64
    check-cast v6, Ljava/lang/reflect/Field;

    :goto_22
    move/from16 v29, v1

    goto :goto_23

    .line 65
    :cond_30
    check-cast v6, Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzidf;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 66
    aput-object v6, v15, v29

    goto :goto_22

    .line 67
    :goto_23
    invoke-virtual {v14, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    rem-int/lit8 v1, v29, 0x20

    move/from16 v6, v28

    const v23, 0xd800

    move/from16 v28, v0

    goto :goto_24

    :cond_31
    const v23, 0xd800

    move/from16 v28, v1

    const/4 v1, 0x0

    :goto_24
    const/16 v0, 0x12

    if-lt v5, v0, :cond_32

    const/16 v0, 0x31

    if-gt v5, v0, :cond_32

    add-int/lit8 v0, v22, 0x1

    .line 68
    aput v2, v16, v22

    move/from16 v22, v0

    :cond_32
    move/from16 v0, v26

    :goto_25
    add-int/lit8 v26, v20, 0x1

    .line 69
    aput v4, v11, v20

    add-int/lit8 v4, v20, 0x2

    move/from16 v27, v0

    and-int/lit16 v0, v8, 0x200

    if-eqz v0, :cond_33

    const/high16 v0, 0x20000000

    goto :goto_26

    :cond_33
    const/4 v0, 0x0

    :goto_26
    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_34

    const/high16 v8, 0x10000000

    goto :goto_27

    :cond_34
    const/4 v8, 0x0

    :goto_27
    if-eqz v27, :cond_35

    const/high16 v27, -0x80000000

    goto :goto_28

    :cond_35
    const/16 v27, 0x0

    :goto_28
    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v0, v8

    or-int v0, v0, v27

    or-int/2addr v0, v5

    or-int/2addr v0, v2

    .line 70
    aput v0, v11, v26

    add-int/lit8 v20, v20, 0x3

    shl-int/lit8 v0, v1, 0x14

    or-int v0, v0, v28

    .line 71
    aput v0, v11, v4

    move v4, v6

    move-object v1, v7

    move/from16 v5, v23

    move-object/from16 v0, v25

    move/from16 v2, v30

    move/from16 v7, v31

    goto/16 :goto_b

    :cond_36
    move-object/from16 v25, v0

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/zzidf;

    .line 72
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/ads/zzido;->zzb()Lcom/google/android/gms/internal/ads/zzidc;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    move-object v10, v11

    move-object v11, v9

    move-object v9, v0

    invoke-direct/range {v9 .. v23}, Lcom/google/android/gms/internal/ads/zzidf;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzidc;Z[IIILcom/google/android/gms/internal/ads/zzidi;Lcom/google/android/gms/internal/ads/zzico;Lcom/google/android/gms/internal/ads/zzief;Lcom/google/android/gms/internal/ads/zzibc;Lcom/google/android/gms/internal/ads/zzicx;)V

    return-object v9

    .line 73
    :cond_37
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 74
    throw v0
.end method

.method private static zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Field "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final zzo(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzA(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzidf;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    .line 3
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzE(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidu;->zza()Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/ads/zzidu;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    return-void

    .line 14
    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzE(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidu;->zza()Ljava/lang/Object;

    move-result-object v4

    .line 17
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/ads/zzidu;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    .line 19
    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzidu;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    aget p1, p1, p3

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr p3, v1

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Source subfield "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzp(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzc:[I

    aget v1, v0, p3

    .line 2
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzA(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    sget-object v3, Lcom/google/android/gms/internal/ads/zzidf;->zzb:Lsun/misc/Unsafe;

    int-to-long v4, v2

    .line 4
    invoke-virtual {v3, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object p2

    .line 8
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzE(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {v3, p1, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidu;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 12
    invoke-interface {p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzidu;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 14
    :goto_0
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    return-void

    .line 15
    :cond_2
    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzE(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidu;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzidu;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    .line 20
    :cond_3
    invoke-interface {p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzidu;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 5
    aget p3, v0, p3

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Source subfield "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzq(I)Lcom/google/android/gms/internal/ads/zzidu;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzidu;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidm;->zza()Lcom/google/android/gms/internal/ads/zzidm;

    move-result-object v2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzidm;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v1

    .line 3
    aput-object v1, v0, p1

    return-object v1
.end method

.method private final zzr(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzs(I)Lcom/google/android/gms/internal/ads/zzibx;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzibx;

    return-object p1
.end method

.method private final zzt(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzidf;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzidu;->zza()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzidf;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzidf;->zzE(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 7
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzidu;->zza()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzidu;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final zzu(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzidf;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzidf;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zzv(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzidu;->zza()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/ads/zzidf;->zzb:Lsun/misc/Unsafe;

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzA(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzidf;->zzE(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzidu;->zza()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzidu;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final zzw(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzidf;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzief;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzc:[I

    aget v0, v0, p2

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzidf;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzidf;->zzs(I)Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-object p3

    .line 5
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzicw;

    .line 6
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzidf;->zzr(I)Ljava/lang/Object;

    move-result-object p2

    .line 7
    check-cast p2, Lcom/google/android/gms/internal/ads/zzicv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzicv;->zze()Lcom/google/android/gms/internal/ads/zzicu;

    move-result-object p2

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzibx;->zza(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p3, :cond_3

    .line 11
    invoke-virtual {p4, p5}, Lcom/google/android/gms/internal/ads/zzief;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 12
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzicv;->zzc(Lcom/google/android/gms/internal/ads/zzicu;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 13
    sget-object v4, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    .line 14
    new-array v4, v3, [B

    .line 15
    sget v5, Lcom/google/android/gms/internal/ads/zziaw;->$r8$clinit:I

    .line 16
    new-instance v5, Lcom/google/android/gms/internal/ads/zziat;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v3}, Lcom/google/android/gms/internal/ads/zziat;-><init>([BII)V

    .line 17
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, p2, v3, v2}, Lcom/google/android/gms/internal/ads/zzicv;->zzb(Lcom/google/android/gms/internal/ads/zziaw;Lcom/google/android/gms/internal/ads/zzicu;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zziaj;->zza(Lcom/google/android/gms/internal/ads/zziaw;[B)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v2

    invoke-virtual {p4, p3, v0, v2}, Lcom/google/android/gms/internal/ads/zzief;->zzd(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzian;)V

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    .line 20
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    return-object p3
.end method

.method private static zzy(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzidu;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzidu;->zzl(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final zzz(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzidp;)V
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzidf;->zzD(I)Z

    move-result v0

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzidp;->zzn()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzi:Z

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzidp;->zzm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 2
    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzidp;->zzq()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzg:Lcom/google/android/gms/internal/ads/zzidc;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbg()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzc:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzA(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzC(I)I

    move-result v2

    int-to-long v4, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 2
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzB(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 3
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v6

    .line 4
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v2

    if-ne v6, v2, :cond_1

    .line 5
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzidw;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 7
    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzidw;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzidw;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzidw;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 14
    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 16
    :pswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 18
    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 20
    :pswitch_7
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 22
    :pswitch_8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzidw;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 29
    :pswitch_b
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzidw;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 32
    :pswitch_c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzidw;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 35
    :pswitch_d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzh(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzh(Ljava/lang/Object;J)Z

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 37
    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 39
    :pswitch_f
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    .line 41
    :pswitch_10
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 43
    :pswitch_11
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    .line 45
    :pswitch_12
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    .line 47
    :pswitch_13
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzj(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 49
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzj(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 50
    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzl(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 52
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzl(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_1
    :goto_3
    return v0

    .line 53
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzibr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    .line 54
    check-cast p2, Lcom/google/android/gms/internal/ads/zzibr;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    .line 55
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    return v0

    :cond_3
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzh:Z

    if-nez p2, :cond_4

    const/4 p1, 0x1

    return p1

    .line 56
    :cond_4
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzc:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzA(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzidf;->zzC(I)I

    move-result v3

    .line 2
    aget v2, v2, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 3
    :pswitch_0
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 4
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto/16 :goto_4

    .line 6
    :pswitch_1
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 7
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzice;->zzb:[B

    :goto_2
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_1

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 9
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    .line 10
    :pswitch_3
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 11
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzice;->zzb:[B

    goto :goto_2

    .line 12
    :pswitch_4
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 13
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    .line 14
    :pswitch_5
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    .line 16
    :pswitch_6
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    .line 18
    :pswitch_7
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 20
    :pswitch_8
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 23
    :pswitch_9
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 24
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 25
    :pswitch_a
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 26
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzK(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzice;->zzb(Z)I

    move-result v2

    goto/16 :goto_1

    .line 27
    :pswitch_b
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 28
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    .line 29
    :pswitch_c
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzice;->zzb:[B

    goto/16 :goto_2

    .line 31
    :pswitch_d
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 32
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    .line 33
    :pswitch_e
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 34
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzice;->zzb:[B

    goto/16 :goto_2

    .line 35
    :pswitch_f
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzice;->zzb:[B

    goto/16 :goto_2

    .line 37
    :pswitch_10
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzH(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    .line 39
    :pswitch_11
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzG(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzice;->zzb:[B

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 41
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 43
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    :goto_3
    add-int/2addr v1, v6

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    .line 45
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzice;->zzb:[B

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 47
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzice;->zzb:[B

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 49
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 50
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    .line 52
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    .line 54
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    .line 55
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzh(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzice;->zzb(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    .line 56
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    .line 57
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzice;->zzb:[B

    goto/16 :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 58
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    .line 59
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzice;->zzb:[B

    goto/16 :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 60
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzice;->zzb:[B

    goto/16 :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 61
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzj(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    .line 62
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziem;->zzl(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 63
    sget-object v4, Lcom/google/android/gms/internal/ads/zzice;->zzb:[B

    goto/16 :goto_2

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzh:Z

    if-nez v0, :cond_3

    return v1

    .line 66
    :cond_3
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzidf;->zzF(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzc:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzA(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzC(I)I

    move-result v2

    .line 3
    aget v1, v1, v0

    int-to-long v3, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 12
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzp(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 13
    :pswitch_1
    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 15
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_2

    .line 16
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzp(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 17
    :pswitch_3
    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 19
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_2

    .line 20
    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/ads/zzidw;->$r8$clinit:I

    .line 21
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzicx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    .line 4
    :pswitch_5
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzicd;

    .line 5
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzicd;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v5, :cond_1

    if-lez v6, :cond_1

    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzicd;->zza()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/2addr v6, v5

    .line 9
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/ads/zzicd;->zzh(I)Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 11
    :goto_1
    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    .line 24
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzo(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 25
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zziem;->zzg(Ljava/lang/Object;JJ)V

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 28
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziem;->zze(Ljava/lang/Object;JI)V

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 31
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zziem;->zzg(Ljava/lang/Object;JJ)V

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 34
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziem;->zze(Ljava/lang/Object;JI)V

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 37
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziem;->zze(Ljava/lang/Object;JI)V

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 40
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziem;->zze(Ljava/lang/Object;JI)V

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 43
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 46
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzo(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 47
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 50
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzh(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzi(Ljava/lang/Object;JZ)V

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 53
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziem;->zze(Ljava/lang/Object;JI)V

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    .line 56
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zziem;->zzg(Ljava/lang/Object;JJ)V

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    .line 59
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziem;->zze(Ljava/lang/Object;JI)V

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    .line 62
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zziem;->zzg(Ljava/lang/Object;JJ)V

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    .line 65
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zziem;->zzg(Ljava/lang/Object;JJ)V

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    .line 68
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzj(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzk(Ljava/lang/Object;JF)V

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    .line 71
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzl(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zziem;->zzm(Ljava/lang/Object;JD)V

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzm:Lcom/google/android/gms/internal/ads/zzief;

    .line 74
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzidw;->zzI(Lcom/google/android/gms/internal/ads/zzief;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzh:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzn:Lcom/google/android/gms/internal/ads/zzibc;

    .line 75
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzidw;->zzH(Lcom/google/android/gms/internal/ads/zzibc;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zze(Ljava/lang/Object;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v6, Lcom/google/android/gms/internal/ads/zzidf;->zzb:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    const v8, 0xfffff

    move v2, v7

    move v4, v2

    move v9, v4

    move v3, v8

    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzidf;->zzc:[I

    array-length v10, v5

    if-ge v2, v10, :cond_1a

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzA(I)I

    move-result v10

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzidf;->zzC(I)I

    move-result v11

    .line 2
    aget v12, v5, v2

    add-int/lit8 v13, v2, 0x2

    .line 3
    aget v5, v5, v13

    and-int v13, v5, v8

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v11, v14, :cond_2

    if-eq v13, v3, :cond_1

    if-ne v13, v8, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    int-to-long v3, v13

    .line 4
    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v13

    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v15, v5

    goto :goto_2

    :cond_2
    move v5, v7

    :goto_2
    and-int/2addr v10, v8

    .line 5
    sget-object v13, Lcom/google/android/gms/internal/ads/zzibh;->zzJ:Lcom/google/android/gms/internal/ads/zzibh;

    .line 6
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzibh;->zza()I

    move-result v13

    if-lt v11, v13, :cond_3

    sget-object v13, Lcom/google/android/gms/internal/ads/zzibh;->zzW:Lcom/google/android/gms/internal/ads/zzibh;

    .line 5
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzibh;->zza()I

    :cond_3
    int-to-long v13, v10

    const/16 v10, 0x3f

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_1c

    .line 7
    :pswitch_0
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 8
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzidc;

    .line 9
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v10

    .line 10
    invoke-static {v12, v5, v10}, Lcom/google/android/gms/internal/ads/zzidw;->zzE(ILcom/google/android/gms/internal/ads/zzidc;Lcom/google/android/gms/internal/ads/zzidu;)I

    move-result v5

    :goto_3
    add-int/2addr v9, v5

    goto/16 :goto_1c

    .line 11
    :pswitch_1
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v5, v12, 0x3

    .line 12
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzidf;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v11

    add-long v13, v11, v11

    shr-long v10, v11, v10

    .line 13
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    xor-long/2addr v10, v13

    .line 14
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

    move-result v10

    :goto_4
    add-int/2addr v5, v10

    goto :goto_3

    .line 15
    :pswitch_2
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v5, v12, 0x3

    .line 16
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzidf;->zzI(Ljava/lang/Object;J)I

    move-result v10

    add-int v11, v10, v10

    shr-int/lit8 v10, v10, 0x1f

    .line 17
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    xor-int/2addr v10, v11

    .line 18
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    goto :goto_4

    .line 19
    :pswitch_3
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v5, v12, 0x3

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    :goto_5
    add-int/lit8 v5, v5, 0x8

    goto :goto_3

    .line 21
    :pswitch_4
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v5, v12, 0x3

    .line 22
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    :goto_6
    add-int/lit8 v5, v5, 0x4

    goto :goto_3

    .line 23
    :pswitch_5
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v5, v12, 0x3

    .line 24
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzidf;->zzI(Ljava/lang/Object;J)I

    move-result v10

    int-to-long v10, v10

    .line 25
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    .line 26
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

    move-result v10

    goto :goto_4

    .line 27
    :pswitch_6
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v5, v12, 0x3

    .line 28
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzidf;->zzI(Ljava/lang/Object;J)I

    move-result v10

    .line 29
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    .line 30
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    goto :goto_4

    .line 31
    :pswitch_7
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v5, v12, 0x3

    .line 32
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzian;

    .line 33
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    .line 34
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzian;->zzc()I

    move-result v10

    .line 35
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    :goto_7
    add-int/2addr v11, v10

    add-int/2addr v5, v11

    goto/16 :goto_3

    .line 36
    :pswitch_8
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 37
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 38
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v10

    invoke-static {v12, v5, v10}, Lcom/google/android/gms/internal/ads/zzidw;->zzD(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;)I

    move-result v5

    goto/16 :goto_3

    .line 39
    :pswitch_9
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v5, v12, 0x3

    .line 40
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lcom/google/android/gms/internal/ads/zzian;

    if-eqz v11, :cond_4

    .line 41
    check-cast v10, Lcom/google/android/gms/internal/ads/zzian;

    .line 42
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    .line 43
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzian;->zzc()I

    move-result v10

    .line 44
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto :goto_7

    .line 45
    :cond_4
    check-cast v10, Ljava/lang/String;

    .line 46
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    .line 47
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzier;->zzc(Ljava/lang/String;)I

    move-result v10

    .line 48
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto :goto_7

    .line 49
    :pswitch_a
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v5, v12, 0x3

    .line 50
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    add-int/2addr v5, v15

    goto/16 :goto_3

    .line 51
    :pswitch_b
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v5, v12, 0x3

    .line 52
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    goto/16 :goto_6

    .line 53
    :pswitch_c
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v5, v12, 0x3

    .line 54
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    goto/16 :goto_5

    .line 55
    :pswitch_d
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v5, v12, 0x3

    .line 56
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzidf;->zzI(Ljava/lang/Object;J)I

    move-result v10

    int-to-long v10, v10

    .line 57
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    .line 58
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

    move-result v10

    goto/16 :goto_4

    .line 59
    :pswitch_e
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v5, v12, 0x3

    .line 60
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzidf;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 61
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    .line 62
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

    move-result v10

    goto/16 :goto_4

    .line 63
    :pswitch_f
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v5, v12, 0x3

    .line 64
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzidf;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 65
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    .line 66
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

    move-result v10

    goto/16 :goto_4

    .line 67
    :pswitch_10
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v5, v12, 0x3

    .line 68
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    goto/16 :goto_6

    .line 69
    :pswitch_11
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v5, v12, 0x3

    .line 70
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    goto/16 :goto_5

    .line 71
    :pswitch_12
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzr(I)Ljava/lang/Object;

    move-result-object v10

    .line 72
    check-cast v5, Lcom/google/android/gms/internal/ads/zzicw;

    .line 73
    check-cast v10, Lcom/google/android/gms/internal/ads/zzicv;

    .line 74
    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    :goto_8
    move v11, v7

    goto :goto_a

    .line 75
    :cond_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzicw;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v11, v7

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v12, v14, v13}, Lcom/google/android/gms/internal/ads/zzicv;->zzd(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    add-int/2addr v11, v13

    goto :goto_9

    :cond_6
    :goto_a
    add-int/2addr v9, v11

    goto/16 :goto_1c

    .line 77
    :pswitch_13
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 78
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v10

    .line 79
    sget v11, Lcom/google/android/gms/internal/ads/zzidw;->$r8$clinit:I

    .line 80
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_7

    move v14, v7

    goto :goto_c

    :cond_7
    move v13, v7

    move v14, v13

    :goto_b
    if-ge v13, v11, :cond_8

    .line 81
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzidc;

    invoke-static {v12, v15, v10}, Lcom/google/android/gms/internal/ads/zzidw;->zzE(ILcom/google/android/gms/internal/ads/zzidc;Lcom/google/android/gms/internal/ads/zzidu;)I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_8
    :goto_c
    add-int/2addr v9, v14

    goto/16 :goto_1c

    .line 82
    :pswitch_14
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 83
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzu(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    shl-int/lit8 v10, v12, 0x3

    .line 84
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    .line 85
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    :goto_d
    add-int/2addr v10, v11

    add-int/2addr v10, v5

    :cond_9
    :goto_e
    add-int/2addr v9, v10

    goto/16 :goto_1c

    .line 86
    :pswitch_15
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 87
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzy(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    shl-int/lit8 v10, v12, 0x3

    .line 88
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    .line 89
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto :goto_d

    .line 90
    :pswitch_16
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 91
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzB(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    shl-int/lit8 v10, v12, 0x3

    .line 92
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    .line 93
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto :goto_d

    .line 94
    :pswitch_17
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 95
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzz(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    shl-int/lit8 v10, v12, 0x3

    .line 96
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    .line 97
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto :goto_d

    .line 98
    :pswitch_18
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 99
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzv(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    shl-int/lit8 v10, v12, 0x3

    .line 100
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    .line 101
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto :goto_d

    .line 102
    :pswitch_19
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 103
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzx(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    shl-int/lit8 v10, v12, 0x3

    .line 104
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    .line 105
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto :goto_d

    .line 106
    :pswitch_1a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 107
    sget v10, Lcom/google/android/gms/internal/ads/zzidw;->$r8$clinit:I

    .line 108
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_19

    shl-int/lit8 v10, v12, 0x3

    .line 109
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    .line 110
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto/16 :goto_d

    .line 111
    :pswitch_1b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 112
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzz(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    shl-int/lit8 v10, v12, 0x3

    .line 113
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    .line 114
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto/16 :goto_d

    .line 115
    :pswitch_1c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 116
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzB(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    shl-int/lit8 v10, v12, 0x3

    .line 117
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    .line 118
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto/16 :goto_d

    .line 119
    :pswitch_1d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 120
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzw(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    shl-int/lit8 v10, v12, 0x3

    .line 121
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    .line 122
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto/16 :goto_d

    .line 123
    :pswitch_1e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 124
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzt(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    shl-int/lit8 v10, v12, 0x3

    .line 125
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    .line 126
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto/16 :goto_d

    .line 127
    :pswitch_1f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 128
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzs(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    shl-int/lit8 v10, v12, 0x3

    .line 129
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    .line 130
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto/16 :goto_d

    .line 131
    :pswitch_20
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 132
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzz(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    shl-int/lit8 v10, v12, 0x3

    .line 133
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    .line 134
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto/16 :goto_d

    .line 135
    :pswitch_21
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 136
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzB(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    shl-int/lit8 v10, v12, 0x3

    .line 137
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    .line 138
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto/16 :goto_d

    .line 139
    :pswitch_22
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 140
    sget v10, Lcom/google/android/gms/internal/ads/zzidw;->$r8$clinit:I

    .line 141
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_a

    :goto_f
    move v5, v7

    goto/16 :goto_3

    :cond_a
    shl-int/lit8 v11, v12, 0x3

    .line 142
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzu(Ljava/util/List;)I

    move-result v5

    .line 143
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    :goto_10
    mul-int/2addr v10, v11

    goto/16 :goto_4

    .line 144
    :pswitch_23
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 145
    sget v10, Lcom/google/android/gms/internal/ads/zzidw;->$r8$clinit:I

    .line 146
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_b

    goto :goto_f

    :cond_b
    shl-int/lit8 v11, v12, 0x3

    .line 147
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzy(Ljava/util/List;)I

    move-result v5

    .line 148
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto :goto_10

    .line 149
    :pswitch_24
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 150
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/ads/zzidw;->zzC(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 151
    :pswitch_25
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 152
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/ads/zzidw;->zzA(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 153
    :pswitch_26
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 154
    sget v10, Lcom/google/android/gms/internal/ads/zzidw;->$r8$clinit:I

    .line 155
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_c

    goto :goto_f

    :cond_c
    shl-int/lit8 v11, v12, 0x3

    .line 156
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzv(Ljava/util/List;)I

    move-result v5

    .line 157
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto :goto_10

    .line 158
    :pswitch_27
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 159
    sget v10, Lcom/google/android/gms/internal/ads/zzidw;->$r8$clinit:I

    .line 160
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_d

    goto :goto_f

    :cond_d
    shl-int/lit8 v11, v12, 0x3

    .line 161
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzx(Ljava/util/List;)I

    move-result v5

    .line 162
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto :goto_10

    .line 163
    :pswitch_28
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 164
    sget v10, Lcom/google/android/gms/internal/ads/zzidw;->$r8$clinit:I

    .line 165
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_e

    move v10, v7

    goto/16 :goto_e

    :cond_e
    shl-int/lit8 v11, v12, 0x3

    .line 166
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    mul-int/2addr v10, v11

    move v11, v7

    .line 167
    :goto_11
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_9

    .line 168
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzian;

    .line 169
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzian;->zzc()I

    move-result v12

    .line 170
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v13

    add-int/2addr v13, v12

    add-int/2addr v10, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 171
    :pswitch_29
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v10

    .line 172
    sget v11, Lcom/google/android/gms/internal/ads/zzidw;->$r8$clinit:I

    .line 173
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_f

    move v12, v7

    goto :goto_13

    :cond_f
    shl-int/lit8 v12, v12, 0x3

    .line 174
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v12

    mul-int/2addr v12, v11

    move v13, v7

    :goto_12
    if-ge v13, v11, :cond_10

    .line 175
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 179
    check-cast v14, Lcom/google/android/gms/internal/ads/zzhzw;

    .line 180
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaT(Lcom/google/android/gms/internal/ads/zzidu;)I

    move-result v14

    .line 181
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v15

    add-int/2addr v15, v14

    add-int/2addr v12, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    :cond_10
    :goto_13
    add-int/2addr v9, v12

    goto/16 :goto_1c

    .line 182
    :pswitch_2a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget v10, Lcom/google/android/gms/internal/ads/zzidw;->$r8$clinit:I

    .line 183
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_11

    goto/16 :goto_8

    :cond_11
    shl-int/lit8 v11, v12, 0x3

    .line 184
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    mul-int/2addr v11, v10

    move v12, v7

    :goto_14
    if-ge v12, v10, :cond_6

    .line 185
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Lcom/google/android/gms/internal/ads/zzian;

    if-eqz v14, :cond_12

    .line 186
    check-cast v13, Lcom/google/android/gms/internal/ads/zzian;

    .line 187
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzian;->zzc()I

    move-result v13

    .line 188
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v14

    :goto_15
    add-int/2addr v14, v13

    add-int/2addr v11, v14

    goto :goto_16

    .line 189
    :cond_12
    check-cast v13, Ljava/lang/String;

    .line 190
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzier;->zzc(Ljava/lang/String;)I

    move-result v13

    .line 191
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v14

    goto :goto_15

    :goto_16
    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    .line 200
    :pswitch_2b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 201
    sget v10, Lcom/google/android/gms/internal/ads/zzidw;->$r8$clinit:I

    .line 202
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_13

    goto/16 :goto_f

    :cond_13
    shl-int/lit8 v10, v12, 0x3

    .line 203
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    add-int/2addr v10, v15

    mul-int/2addr v5, v10

    goto/16 :goto_3

    .line 204
    :pswitch_2c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 205
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/ads/zzidw;->zzA(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 206
    :pswitch_2d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 207
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/ads/zzidw;->zzC(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 208
    :pswitch_2e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 209
    sget v10, Lcom/google/android/gms/internal/ads/zzidw;->$r8$clinit:I

    .line 210
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_14

    goto/16 :goto_f

    :cond_14
    shl-int/lit8 v11, v12, 0x3

    .line 211
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzw(Ljava/util/List;)I

    move-result v5

    .line 212
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto/16 :goto_10

    .line 213
    :pswitch_2f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 214
    sget v10, Lcom/google/android/gms/internal/ads/zzidw;->$r8$clinit:I

    .line 215
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_15

    goto/16 :goto_f

    :cond_15
    shl-int/lit8 v11, v12, 0x3

    .line 216
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzt(Ljava/util/List;)I

    move-result v5

    .line 217
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v11

    goto/16 :goto_10

    .line 218
    :pswitch_30
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 219
    sget v10, Lcom/google/android/gms/internal/ads/zzidw;->$r8$clinit:I

    .line 220
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_16

    goto/16 :goto_8

    :cond_16
    shl-int/lit8 v10, v12, 0x3

    .line 221
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzs(Ljava/util/List;)I

    move-result v11

    .line 222
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 223
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    mul-int/2addr v5, v10

    add-int/2addr v11, v5

    goto/16 :goto_a

    .line 224
    :pswitch_31
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 225
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/ads/zzidw;->zzA(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 226
    :pswitch_32
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 227
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/ads/zzidw;->zzC(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 228
    :pswitch_33
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 229
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzidc;

    .line 230
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v10

    .line 231
    invoke-static {v12, v5, v10}, Lcom/google/android/gms/internal/ads/zzidw;->zzE(ILcom/google/android/gms/internal/ads/zzidc;Lcom/google/android/gms/internal/ads/zzidu;)I

    move-result v5

    goto/16 :goto_3

    .line 232
    :pswitch_34
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    shl-int/lit8 v0, v12, 0x3

    .line 233
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    add-long v13, v11, v11

    shr-long v10, v11, v10

    .line 234
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    xor-long/2addr v10, v13

    .line 235
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

    move-result v5

    :goto_17
    add-int/2addr v0, v5

    :goto_18
    add-int/2addr v9, v0

    :cond_17
    move-object/from16 v0, p0

    goto/16 :goto_1c

    .line 236
    :pswitch_35
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    shl-int/lit8 v0, v12, 0x3

    .line 237
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    add-int v10, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    .line 238
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    xor-int/2addr v5, v10

    .line 239
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    goto :goto_17

    .line 240
    :pswitch_36
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    shl-int/lit8 v0, v12, 0x3

    .line 241
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    :goto_19
    add-int/lit8 v0, v0, 0x8

    goto :goto_18

    .line 242
    :pswitch_37
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    shl-int/lit8 v0, v12, 0x3

    .line 243
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    :goto_1a
    add-int/lit8 v0, v0, 0x4

    goto :goto_18

    .line 244
    :pswitch_38
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    shl-int/lit8 v0, v12, 0x3

    .line 245
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v10, v5

    .line 246
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    .line 247
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

    move-result v5

    goto :goto_17

    .line 248
    :pswitch_39
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    shl-int/lit8 v0, v12, 0x3

    .line 249
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    .line 250
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    .line 251
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v5

    goto :goto_17

    .line 252
    :pswitch_3a
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    shl-int/lit8 v0, v12, 0x3

    .line 253
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzian;

    .line 254
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    .line 255
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzian;->zzc()I

    move-result v5

    .line 256
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    :goto_1b
    add-int/2addr v10, v5

    add-int/2addr v0, v10

    goto/16 :goto_18

    .line 257
    :pswitch_3b
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 258
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 259
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v10

    invoke-static {v12, v5, v10}, Lcom/google/android/gms/internal/ads/zzidw;->zzD(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;)I

    move-result v5

    goto/16 :goto_3

    .line 260
    :pswitch_3c
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    shl-int/lit8 v0, v12, 0x3

    .line 261
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v10, v5, Lcom/google/android/gms/internal/ads/zzian;

    if-eqz v10, :cond_18

    .line 262
    check-cast v5, Lcom/google/android/gms/internal/ads/zzian;

    .line 263
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    .line 264
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzian;->zzc()I

    move-result v5

    .line 265
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    goto :goto_1b

    .line 266
    :cond_18
    check-cast v5, Ljava/lang/String;

    .line 267
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    .line 268
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzier;->zzc(Ljava/lang/String;)I

    move-result v5

    .line 269
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v10

    goto :goto_1b

    .line 270
    :pswitch_3d
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    shl-int/lit8 v0, v12, 0x3

    .line 271
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    add-int/2addr v0, v15

    goto/16 :goto_18

    .line 272
    :pswitch_3e
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    shl-int/lit8 v0, v12, 0x3

    .line 273
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    goto/16 :goto_1a

    .line 274
    :pswitch_3f
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    shl-int/lit8 v0, v12, 0x3

    .line 275
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    goto/16 :goto_19

    .line 276
    :pswitch_40
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    shl-int/lit8 v0, v12, 0x3

    .line 277
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v10, v5

    .line 278
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    .line 279
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

    move-result v5

    goto/16 :goto_17

    .line 280
    :pswitch_41
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    shl-int/lit8 v0, v12, 0x3

    .line 281
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 282
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    .line 283
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

    move-result v5

    goto/16 :goto_17

    .line 284
    :pswitch_42
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    shl-int/lit8 v0, v12, 0x3

    .line 285
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 286
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    .line 287
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

    move-result v5

    goto/16 :goto_17

    .line 288
    :pswitch_43
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    shl-int/lit8 v0, v12, 0x3

    .line 289
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    goto/16 :goto_1a

    .line 290
    :pswitch_44
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v1, v12, 0x3

    .line 291
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v9, v1

    :cond_19
    :goto_1c
    add-int/lit8 v2, v2, 0x3

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 292
    :cond_1a
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzibr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    .line 294
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzieg;->zzi()I

    move-result v1

    add-int/2addr v9, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzidf;->zzh:Z

    if-nez v1, :cond_1b

    return v9

    .line 295
    :cond_1b
    invoke-static/range {p1 .. p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v1, 0x0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzieu;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzidf;->zzh:Z

    if-nez v2, :cond_6

    .line 4
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzidf;->zzc:[I

    sget-object v8, Lcom/google/android/gms/internal/ads/zzidf;->zzb:Lsun/misc/Unsafe;

    const v9, 0xfffff

    move v3, v9

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v7

    if-ge v2, v5, :cond_5

    .line 5
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzA(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzC(I)I

    move-result v11

    .line 6
    aget v12, v7, v2

    const/16 v13, 0x11

    const/4 v14, 0x1

    if-gt v11, v13, :cond_2

    add-int/lit8 v13, v2, 0x2

    .line 7
    aget v13, v7, v13

    and-int v15, v13, v9

    if-eq v15, v3, :cond_1

    if-ne v15, v9, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    int-to-long v3, v15

    .line 8
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v15

    :cond_1
    ushr-int/lit8 v13, v13, 0x14

    shl-int v13, v14, v13

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    and-int/2addr v5, v9

    int-to-long v9, v5

    packed-switch v11, :pswitch_data_0

    :cond_3
    :goto_3
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 110
    :pswitch_0
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 111
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v9

    .line 112
    invoke-interface {v6, v12, v5, v9}, Lcom/google/android/gms/internal/ads/zzieu;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;)V

    goto :goto_3

    .line 113
    :pswitch_1
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 114
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzidf;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzieu;->zzq(IJ)V

    goto :goto_3

    .line 115
    :pswitch_2
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 116
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzidf;->zzI(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/ads/zzieu;->zzp(II)V

    goto :goto_3

    .line 117
    :pswitch_3
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 118
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzidf;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzieu;->zzd(IJ)V

    goto :goto_3

    .line 119
    :pswitch_4
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 120
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzidf;->zzI(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/ads/zzieu;->zzb(II)V

    goto :goto_3

    .line 121
    :pswitch_5
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 122
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzidf;->zzI(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/ads/zzieu;->zzg(II)V

    goto :goto_3

    .line 123
    :pswitch_6
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 124
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzidf;->zzI(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/ads/zzieu;->zzo(II)V

    goto :goto_3

    .line 125
    :pswitch_7
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 126
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzian;

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/ads/zzieu;->zzn(ILcom/google/android/gms/internal/ads/zzian;)V

    goto :goto_3

    .line 127
    :pswitch_8
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 128
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 129
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v9

    invoke-interface {v6, v12, v5, v9}, Lcom/google/android/gms/internal/ads/zzieu;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;)V

    goto/16 :goto_3

    .line 130
    :pswitch_9
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 131
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v12, v5, v6}, Lcom/google/android/gms/internal/ads/zzidf;->zzU(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzieu;)V

    goto/16 :goto_3

    .line 132
    :pswitch_a
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 133
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzidf;->zzK(Ljava/lang/Object;J)Z

    move-result v5

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/ads/zzieu;->zzl(IZ)V

    goto/16 :goto_3

    .line 134
    :pswitch_b
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 135
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzidf;->zzI(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/ads/zzieu;->zzk(II)V

    goto/16 :goto_3

    .line 136
    :pswitch_c
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 137
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzidf;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzieu;->zzj(IJ)V

    goto/16 :goto_3

    .line 138
    :pswitch_d
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 139
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzidf;->zzI(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/ads/zzieu;->zzi(II)V

    goto/16 :goto_3

    .line 140
    :pswitch_e
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 141
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzidf;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzieu;->zzh(IJ)V

    goto/16 :goto_3

    .line 142
    :pswitch_f
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 143
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzidf;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzieu;->zzc(IJ)V

    goto/16 :goto_3

    .line 144
    :pswitch_10
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 145
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzidf;->zzH(Ljava/lang/Object;J)F

    move-result v5

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/ads/zzieu;->zze(IF)V

    goto/16 :goto_3

    .line 146
    :pswitch_11
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 147
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzidf;->zzG(Ljava/lang/Object;J)D

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzieu;->zzf(ID)V

    goto/16 :goto_3

    .line 148
    :pswitch_12
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 149
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzr(I)Ljava/lang/Object;

    move-result-object v9

    .line 150
    check-cast v9, Lcom/google/android/gms/internal/ads/zzicv;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzicv;->zze()Lcom/google/android/gms/internal/ads/zzicu;

    move-result-object v9

    .line 151
    check-cast v5, Lcom/google/android/gms/internal/ads/zzicw;

    .line 152
    invoke-interface {v6, v12, v9, v5}, Lcom/google/android/gms/internal/ads/zzieu;->zzM(ILcom/google/android/gms/internal/ads/zzicu;Ljava/util/Map;)V

    goto/16 :goto_3

    .line 106
    :pswitch_13
    aget v5, v7, v2

    .line 107
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 108
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v10

    .line 109
    invoke-static {v5, v9, v6, v10}, Lcom/google/android/gms/internal/ads/zzidw;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Lcom/google/android/gms/internal/ads/zzidu;)V

    goto/16 :goto_3

    .line 103
    :pswitch_14
    aget v5, v7, v2

    .line 104
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 105
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/ads/zzidw;->zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_3

    .line 100
    :pswitch_15
    aget v5, v7, v2

    .line 101
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 102
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/ads/zzidw;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_3

    .line 97
    :pswitch_16
    aget v5, v7, v2

    .line 98
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 99
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/ads/zzidw;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_3

    .line 94
    :pswitch_17
    aget v5, v7, v2

    .line 95
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 96
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/ads/zzidw;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_3

    .line 91
    :pswitch_18
    aget v5, v7, v2

    .line 92
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 93
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/ads/zzidw;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_3

    .line 88
    :pswitch_19
    aget v5, v7, v2

    .line 89
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 90
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/ads/zzidw;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_3

    .line 85
    :pswitch_1a
    aget v5, v7, v2

    .line 86
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 87
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/ads/zzidw;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_3

    .line 82
    :pswitch_1b
    aget v5, v7, v2

    .line 83
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 84
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/ads/zzidw;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_3

    .line 79
    :pswitch_1c
    aget v5, v7, v2

    .line 80
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 81
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/ads/zzidw;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_3

    .line 76
    :pswitch_1d
    aget v5, v7, v2

    .line 77
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 78
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/ads/zzidw;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_3

    .line 73
    :pswitch_1e
    aget v5, v7, v2

    .line 74
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 75
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/ads/zzidw;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_3

    .line 70
    :pswitch_1f
    aget v5, v7, v2

    .line 71
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 72
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/ads/zzidw;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_3

    .line 67
    :pswitch_20
    aget v5, v7, v2

    .line 68
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 69
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/ads/zzidw;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_3

    .line 64
    :pswitch_21
    aget v5, v7, v2

    .line 65
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 66
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/ads/zzidw;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_3

    .line 61
    :pswitch_22
    aget v5, v7, v2

    .line 62
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v11, 0x0

    .line 63
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/ads/zzidw;->zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/4 v11, 0x0

    .line 58
    aget v5, v7, v2

    .line 59
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 60
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/ads/zzidw;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/4 v11, 0x0

    .line 55
    aget v5, v7, v2

    .line 56
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 57
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/ads/zzidw;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/4 v11, 0x0

    .line 52
    aget v5, v7, v2

    .line 53
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 54
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/ads/zzidw;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/4 v11, 0x0

    .line 49
    aget v5, v7, v2

    .line 50
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 51
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/ads/zzidw;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/4 v11, 0x0

    .line 46
    aget v5, v7, v2

    .line 47
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 48
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/ads/zzidw;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_4

    .line 43
    :pswitch_28
    aget v5, v7, v2

    .line 44
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 45
    invoke-static {v5, v9, v6}, Lcom/google/android/gms/internal/ads/zzidw;->zzp(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;)V

    goto/16 :goto_3

    .line 39
    :pswitch_29
    aget v5, v7, v2

    .line 40
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 41
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v10

    .line 42
    invoke-static {v5, v9, v6, v10}, Lcom/google/android/gms/internal/ads/zzidw;->zzq(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Lcom/google/android/gms/internal/ads/zzidu;)V

    goto/16 :goto_3

    .line 36
    :pswitch_2a
    aget v5, v7, v2

    .line 37
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 38
    invoke-static {v5, v9, v6}, Lcom/google/android/gms/internal/ads/zzidw;->zzo(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;)V

    goto/16 :goto_3

    .line 33
    :pswitch_2b
    aget v5, v7, v2

    .line 34
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v11, 0x0

    .line 35
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/ads/zzidw;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v11, 0x0

    .line 30
    aget v5, v7, v2

    .line 31
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 32
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/ads/zzidw;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v11, 0x0

    .line 27
    aget v5, v7, v2

    .line 28
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 29
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/ads/zzidw;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v11, 0x0

    .line 24
    aget v5, v7, v2

    .line 25
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 26
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/ads/zzidw;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v11, 0x0

    .line 21
    aget v5, v7, v2

    .line 22
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 23
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/ads/zzidw;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v11, 0x0

    .line 18
    aget v5, v7, v2

    .line 19
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 20
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/ads/zzidw;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v11, 0x0

    .line 15
    aget v5, v7, v2

    .line 16
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 17
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/ads/zzidw;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v11, 0x0

    .line 12
    aget v5, v7, v2

    .line 13
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 14
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/ads/zzidw;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V

    goto/16 :goto_4

    :pswitch_33
    move v5, v13

    const/4 v11, 0x0

    .line 153
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 154
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v9

    .line 155
    invoke-interface {v6, v12, v5, v9}, Lcom/google/android/gms/internal/ads/zzieu;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;)V

    goto/16 :goto_4

    :pswitch_34
    move v5, v13

    const/4 v11, 0x0

    .line 156
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 157
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzieu;->zzq(IJ)V

    goto/16 :goto_4

    :pswitch_35
    move v5, v13

    const/4 v11, 0x0

    .line 158
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 159
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/ads/zzieu;->zzp(II)V

    goto/16 :goto_4

    :pswitch_36
    move v5, v13

    const/4 v11, 0x0

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 161
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzieu;->zzd(IJ)V

    goto/16 :goto_4

    :pswitch_37
    move v5, v13

    const/4 v11, 0x0

    .line 162
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 163
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/ads/zzieu;->zzb(II)V

    goto/16 :goto_4

    :pswitch_38
    move v5, v13

    const/4 v11, 0x0

    .line 164
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 165
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/ads/zzieu;->zzg(II)V

    goto/16 :goto_4

    :pswitch_39
    move v5, v13

    const/4 v11, 0x0

    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 167
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/ads/zzieu;->zzo(II)V

    goto/16 :goto_4

    :pswitch_3a
    move v5, v13

    const/4 v11, 0x0

    .line 168
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 169
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzian;

    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/ads/zzieu;->zzn(ILcom/google/android/gms/internal/ads/zzian;)V

    goto/16 :goto_4

    :pswitch_3b
    move v5, v13

    const/4 v11, 0x0

    .line 170
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 171
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 172
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v9

    invoke-interface {v6, v12, v5, v9}, Lcom/google/android/gms/internal/ads/zzieu;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;)V

    goto/16 :goto_4

    :pswitch_3c
    move v5, v13

    const/4 v11, 0x0

    .line 173
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 174
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12, v0, v6}, Lcom/google/android/gms/internal/ads/zzidf;->zzU(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzieu;)V

    goto/16 :goto_4

    :pswitch_3d
    move v5, v13

    const/4 v11, 0x0

    .line 175
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 176
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zziem;->zzh(Ljava/lang/Object;J)Z

    move-result v0

    .line 177
    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/ads/zzieu;->zzl(IZ)V

    goto/16 :goto_4

    :pswitch_3e
    move v5, v13

    const/4 v11, 0x0

    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 179
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/ads/zzieu;->zzk(II)V

    goto :goto_4

    :pswitch_3f
    move v5, v13

    const/4 v11, 0x0

    .line 180
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 181
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzieu;->zzj(IJ)V

    goto :goto_4

    :pswitch_40
    move v5, v13

    const/4 v11, 0x0

    .line 182
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 183
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/ads/zzieu;->zzi(II)V

    goto :goto_4

    :pswitch_41
    move v5, v13

    const/4 v11, 0x0

    .line 184
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 185
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzieu;->zzh(IJ)V

    goto :goto_4

    :pswitch_42
    move v5, v13

    const/4 v11, 0x0

    .line 186
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 187
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzieu;->zzc(IJ)V

    goto :goto_4

    :pswitch_43
    move v5, v13

    const/4 v11, 0x0

    .line 188
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 189
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zziem;->zzj(Ljava/lang/Object;J)F

    move-result v0

    .line 190
    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/ads/zzieu;->zze(IF)V

    goto :goto_4

    :pswitch_44
    move v5, v13

    const/4 v11, 0x0

    .line 191
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 192
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zziem;->zzl(Ljava/lang/Object;J)D

    move-result-wide v9

    .line 193
    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzieu;->zzf(ID)V

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x3

    const v9, 0xfffff

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 196
    :cond_5
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    .line 198
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzieg;->zzg(Lcom/google/android/gms/internal/ads/zzieu;)V

    return-void

    .line 1
    :cond_6
    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidp;Lcom/google/android/gms/internal/ads/zzibb;)V
    .locals 11

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzidf;->zzF(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzm:Lcom/google/android/gms/internal/ads/zzief;

    const/4 v0, 0x0

    move-object v1, v0

    .line 3
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzb()I

    move-result v2

    .line 4
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzR(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v7, 0x0

    if-gez v0, :cond_6

    const v0, 0x7fffffff

    if-ne v2, v0, :cond_2

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzk:I

    move-object v4, v1

    :goto_1
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzl:I

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzj:[I

    .line 198
    aget v3, p3, p2

    move-object v6, p1

    move-object v1, p0

    move-object v2, p1

    .line 199
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzidf;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzief;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object p1, v1

    move-object v3, v2

    add-int/lit8 p2, p2, 0x1

    move-object p1, v3

    goto :goto_1

    :cond_0
    move-object v3, p1

    move-object p1, p0

    :cond_1
    move-object v2, v3

    goto/16 :goto_10

    :cond_2
    move-object v3, p1

    move-object p1, p0

    .line 202
    :try_start_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzidf;->zzh:Z

    if-nez v0, :cond_3

    goto :goto_2

    .line 199
    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzidf;->zzg:Lcom/google/android/gms/internal/ads/zzidc;

    .line 5
    invoke-virtual {p3, v0, v2}, Lcom/google/android/gms/internal/ads/zzibb;->zzc(Lcom/google/android/gms/internal/ads/zzidc;I)Lcom/google/android/gms/internal/ads/zzibp;

    :goto_2
    if-nez v1, :cond_4

    .line 6
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzief;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 7
    :cond_4
    invoke-virtual {v5, v1, p2, v7}, Lcom/google/android/gms/internal/ads/zzief;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidp;I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_5

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzidf;->zzk:I

    move-object v4, v1

    :goto_3
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzidf;->zzl:I

    if-ge p2, p3, :cond_1

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzidf;->zzj:[I

    .line 198
    aget p3, p3, p2

    move-object v6, v3

    move-object v1, p1

    move-object v2, v3

    move v3, p3

    .line 199
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzidf;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzief;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    move-object p1, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    move-object v2, v3

    goto/16 :goto_11

    :cond_6
    move-object v3, p1

    move-object p1, p0

    .line 8
    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzA(I)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzidf;->zzC(I)I

    move-result v6
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzicf; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const v8, 0xfffff

    packed-switch v6, :pswitch_data_0

    if-nez v1, :cond_7

    .line 194
    :try_start_4
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzief;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 195
    :cond_7
    invoke-virtual {v5, v1, p2, v7}, Lcom/google/android/gms/internal/ads/zzief;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidp;I)Z

    move-result v0
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzicf; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_5

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzidf;->zzk:I

    move-object v4, v1

    :goto_5
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzidf;->zzl:I

    if-ge p2, p3, :cond_1

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzidf;->zzj:[I

    .line 198
    aget p3, p3, p2

    move-object v6, v3

    move-object v1, p1

    move-object v2, v3

    move v3, p3

    .line 199
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzidf;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzief;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :catch_0
    move-object v2, v3

    goto/16 :goto_c

    .line 147
    :pswitch_0
    :try_start_5
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzv(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzidc;

    .line 148
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v6

    .line 149
    invoke-interface {p2, v4, v6, p3}, Lcom/google/android/gms/internal/ads/zzidp;->zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)V

    .line 150
    invoke-direct {p0, v3, v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzidf;->zzw(Ljava/lang/Object;IILjava/lang/Object;)V

    :goto_6
    move-object v2, v3

    goto/16 :goto_a

    :pswitch_1
    and-int/2addr v4, v8

    .line 144
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzw()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    int-to-long v8, v4

    .line 145
    invoke-static {v3, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 146
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    :pswitch_2
    and-int/2addr v4, v8

    .line 141
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzv()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    int-to-long v8, v4

    .line 142
    invoke-static {v3, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 143
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    :pswitch_3
    and-int/2addr v4, v8

    .line 138
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzu()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    int-to-long v8, v4

    .line 139
    invoke-static {v3, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 140
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    :pswitch_4
    and-int/2addr v4, v8

    .line 135
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    int-to-long v8, v4

    .line 136
    invoke-static {v3, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 137
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    .line 151
    :pswitch_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzs()I

    move-result v6

    .line 152
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzs(I)Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 153
    invoke-interface {v9, v6}, Lcom/google/android/gms/internal/ads/zzibx;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_7

    .line 156
    :cond_8
    invoke-static {v3, v2, v6, v1, v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzK(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzief;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_4

    :cond_9
    :goto_7
    and-int/2addr v4, v8

    .line 154
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    int-to-long v8, v4

    invoke-static {v3, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 155
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    :pswitch_6
    and-int/2addr v4, v8

    .line 132
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzr()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    int-to-long v8, v4

    .line 133
    invoke-static {v3, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 134
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    :pswitch_7
    and-int/2addr v4, v8

    .line 130
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzq()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v6

    int-to-long v8, v4

    invoke-static {v3, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 131
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_6

    .line 157
    :pswitch_8
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzv(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzidc;

    .line 158
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v6

    .line 159
    invoke-interface {p2, v4, v6, p3}, Lcom/google/android/gms/internal/ads/zzidp;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)V

    .line 160
    invoke-direct {p0, v3, v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzidf;->zzw(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_6

    .line 161
    :pswitch_9
    invoke-direct {p0, v3, v4, p2}, Lcom/google/android/gms/internal/ads/zzidf;->zzz(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzidp;)V

    .line 162
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_6

    :pswitch_a
    and-int/2addr v4, v8

    .line 127
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzl()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    int-to-long v8, v4

    .line 128
    invoke-static {v3, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 129
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_6

    :pswitch_b
    and-int/2addr v4, v8

    .line 124
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzk()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    int-to-long v8, v4

    .line 125
    invoke-static {v3, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 126
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_6

    :pswitch_c
    and-int/2addr v4, v8

    .line 121
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzj()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    int-to-long v8, v4

    .line 122
    invoke-static {v3, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 123
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_6

    :pswitch_d
    and-int/2addr v4, v8

    .line 118
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzi()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    int-to-long v8, v4

    .line 119
    invoke-static {v3, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 120
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_6

    :pswitch_e
    and-int/2addr v4, v8

    .line 115
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzg()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    int-to-long v8, v4

    .line 116
    invoke-static {v3, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 117
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_6

    :pswitch_f
    and-int/2addr v4, v8

    .line 112
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzh()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    int-to-long v8, v4

    .line 113
    invoke-static {v3, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 114
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_6

    :pswitch_10
    and-int/2addr v4, v8

    .line 109
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzf()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    int-to-long v8, v4

    .line 110
    invoke-static {v3, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 111
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_6

    :pswitch_11
    and-int/2addr v4, v8

    .line 106
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zze()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    int-to-long v8, v4

    .line 107
    invoke-static {v3, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 108
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_6

    .line 163
    :pswitch_12
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzr(I)Ljava/lang/Object;

    move-result-object v2

    .line 164
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzA(I)I

    move-result v0

    and-int/2addr v0, v8

    int-to-long v8, v0

    .line 165
    invoke-static {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    .line 170
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzicw;->zza()Lcom/google/android/gms/internal/ads/zzicw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzicw;->zzc()Lcom/google/android/gms/internal/ads/zzicw;

    move-result-object v0

    .line 171
    invoke-static {v3, v8, v9, v0}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    .line 166
    :cond_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzicx;->zza(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 167
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzicw;->zza()Lcom/google/android/gms/internal/ads/zzicw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzicw;->zzc()Lcom/google/android/gms/internal/ads/zzicw;

    move-result-object v4

    .line 168
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzicx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {v3, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v4

    .line 172
    :cond_b
    :goto_8
    check-cast v0, Lcom/google/android/gms/internal/ads/zzicw;

    .line 173
    check-cast v2, Lcom/google/android/gms/internal/ads/zzicv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzicv;->zze()Lcom/google/android/gms/internal/ads/zzicu;

    move-result-object v2

    .line 174
    invoke-interface {p2, v0, v2, p3}, Lcom/google/android/gms/internal/ads/zzidp;->zzP(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzicu;Lcom/google/android/gms/internal/ads/zzibb;)V

    goto/16 :goto_6

    :pswitch_13
    and-int v2, v4, v8

    .line 103
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v0

    int-to-long v8, v2

    .line 104
    invoke-static {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 105
    invoke-interface {p2, v2, v0, p3}, Lcom/google/android/gms/internal/ads/zzidp;->zzH(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)V

    goto/16 :goto_6

    :pswitch_14
    and-int v0, v4, v8

    int-to-long v8, v0

    .line 69
    invoke-static {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzO(Ljava/util/List;)V

    goto/16 :goto_6

    :pswitch_15
    and-int v0, v4, v8

    int-to-long v8, v0

    .line 67
    invoke-static {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzN(Ljava/util/List;)V

    goto/16 :goto_6

    :pswitch_16
    and-int v0, v4, v8

    int-to-long v8, v0

    .line 65
    invoke-static {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzM(Ljava/util/List;)V

    goto/16 :goto_6

    :pswitch_17
    and-int v0, v4, v8

    int-to-long v8, v0

    .line 63
    invoke-static {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzL(Ljava/util/List;)V
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzicf; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_6

    :pswitch_18
    and-int/2addr v4, v8

    int-to-long v8, v4

    .line 59
    :try_start_6
    invoke-static {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 60
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzidp;->zzK(Ljava/util/List;)V
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzicf; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v6, v5

    move-object v5, v1

    move-object v1, v3

    move-object v3, v4

    .line 61
    :try_start_7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzs(I)Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v4

    .line 62
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzidw;->zzJ(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/ads/zzibx;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzief;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzicf; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v2, v1

    move-object v5, v6

    :goto_9
    move-object v1, v0

    :cond_c
    :goto_a
    move-object p1, v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v1, v5

    move-object v5, v6

    goto/16 :goto_d

    :catch_1
    move-object v2, v1

    move-object v1, v5

    move-object v5, v6

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto/16 :goto_d

    :pswitch_19
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 57
    :try_start_8
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzJ(Ljava/util/List;)V

    goto :goto_a

    :pswitch_1a
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 55
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 56
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzE(Ljava/util/List;)V

    goto :goto_a

    :pswitch_1b
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 53
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzD(Ljava/util/List;)V

    goto :goto_a

    :pswitch_1c
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 51
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzC(Ljava/util/List;)V

    goto :goto_a

    :pswitch_1d
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 49
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 50
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzB(Ljava/util/List;)V

    goto :goto_a

    :pswitch_1e
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 47
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzz(Ljava/util/List;)V

    goto :goto_a

    :pswitch_1f
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 45
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzA(Ljava/util/List;)V

    goto :goto_a

    :pswitch_20
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 43
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzy(Ljava/util/List;)V

    goto :goto_a

    :pswitch_21
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 41
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzx(Ljava/util/List;)V

    goto :goto_a

    :pswitch_22
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 39
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 40
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzO(Ljava/util/List;)V

    goto/16 :goto_a

    :pswitch_23
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 37
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzN(Ljava/util/List;)V

    goto/16 :goto_a

    :pswitch_24
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 35
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzM(Ljava/util/List;)V

    goto/16 :goto_a

    :pswitch_25
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 33
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzL(Ljava/util/List;)V
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/zzicf; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_a

    :pswitch_26
    and-int/2addr v4, v8

    int-to-long v8, v4

    .line 29
    :try_start_9
    invoke-static {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 30
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzidp;->zzK(Ljava/util/List;)V
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzicf; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v6, v5

    move-object v5, v1

    move-object v1, v3

    move-object v3, v4

    .line 31
    :try_start_a
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzs(I)Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v4

    .line 32
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzidw;->zzJ(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/ads/zzibx;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzief;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Lcom/google/android/gms/internal/ads/zzicf; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v2, v1

    move-object v5, v6

    goto/16 :goto_9

    :pswitch_27
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 27
    :try_start_b
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 28
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzJ(Ljava/util/List;)V

    goto/16 :goto_a

    :pswitch_28
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 25
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzI(Ljava/util/List;)V

    goto/16 :goto_a

    :pswitch_29
    move-object v2, v3

    .line 175
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v0

    and-int v3, v4, v8

    int-to-long v3, v3

    .line 176
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 177
    invoke-interface {p2, v3, v0, p3}, Lcom/google/android/gms/internal/ads/zzidp;->zzG(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)V

    goto/16 :goto_a

    :pswitch_2a
    move-object v2, v3

    .line 98
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzidf;->zzD(I)Z

    move-result v0

    if-eqz v0, :cond_d

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 101
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    move-object v3, p2

    check-cast v3, Lcom/google/android/gms/internal/ads/zziar;

    const/4 v4, 0x1

    .line 102
    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/ads/zziar;->zzF(Ljava/util/List;Z)V

    goto/16 :goto_a

    :cond_d
    and-int v0, v4, v8

    int-to-long v3, v0

    .line 99
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    move-object v3, p2

    check-cast v3, Lcom/google/android/gms/internal/ads/zziar;

    .line 100
    invoke-virtual {v3, v0, v7}, Lcom/google/android/gms/internal/ads/zziar;->zzF(Ljava/util/List;Z)V

    goto/16 :goto_a

    :pswitch_2b
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 23
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 24
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzE(Ljava/util/List;)V

    goto/16 :goto_a

    :pswitch_2c
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 21
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzD(Ljava/util/List;)V

    goto/16 :goto_a

    :pswitch_2d
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 19
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzC(Ljava/util/List;)V

    goto/16 :goto_a

    :pswitch_2e
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 17
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzB(Ljava/util/List;)V

    goto/16 :goto_a

    :pswitch_2f
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 15
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzz(Ljava/util/List;)V

    goto/16 :goto_a

    :pswitch_30
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 13
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzA(Ljava/util/List;)V

    goto/16 :goto_a

    :pswitch_31
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 11
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzy(Ljava/util/List;)V

    goto/16 :goto_a

    :pswitch_32
    move-object v2, v3

    and-int v0, v4, v8

    int-to-long v3, v0

    .line 9
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzx(Ljava/util/List;)V

    goto/16 :goto_a

    :pswitch_33
    move-object v2, v3

    .line 178
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzidc;

    .line 179
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v4

    .line 180
    invoke-interface {p2, v3, v4, p3}, Lcom/google/android/gms/internal/ads/zzidp;->zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)V

    .line 181
    invoke-direct {p0, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzidf;->zzu(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_34
    move-object v2, v3

    and-int v3, v4, v8

    .line 97
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzw()J

    move-result-wide v8

    int-to-long v3, v3

    invoke-static {v2, v3, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zziem;->zzg(Ljava/lang/Object;JJ)V

    .line 98
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_35
    move-object v2, v3

    and-int v3, v4, v8

    .line 95
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzv()I

    move-result v4

    int-to-long v8, v3

    invoke-static {v2, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zziem;->zze(Ljava/lang/Object;JI)V

    .line 96
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_36
    move-object v2, v3

    and-int v3, v4, v8

    .line 93
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzu()J

    move-result-wide v8

    int-to-long v3, v3

    invoke-static {v2, v3, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zziem;->zzg(Ljava/lang/Object;JJ)V

    .line 94
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_37
    move-object v2, v3

    and-int v3, v4, v8

    .line 91
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzt()I

    move-result v4

    int-to-long v8, v3

    invoke-static {v2, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zziem;->zze(Ljava/lang/Object;JI)V

    .line 92
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_38
    move-object v10, v3

    move v3, v2

    move-object v2, v10

    .line 182
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzs()I

    move-result v6

    .line 183
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzs(I)Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 184
    invoke-interface {v9, v6}, Lcom/google/android/gms/internal/ads/zzibx;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_b

    .line 187
    :cond_e
    invoke-static {v2, v3, v6, v1, v5}, Lcom/google/android/gms/internal/ads/zzidw;->zzK(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzief;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    :cond_f
    :goto_b
    and-int v3, v4, v8

    int-to-long v3, v3

    .line 185
    invoke-static {v2, v3, v4, v6}, Lcom/google/android/gms/internal/ads/zziem;->zze(Ljava/lang/Object;JI)V

    .line 186
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_39
    move-object v2, v3

    and-int v3, v4, v8

    .line 89
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzr()I

    move-result v4

    int-to-long v8, v3

    invoke-static {v2, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zziem;->zze(Ljava/lang/Object;JI)V

    .line 90
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_3a
    move-object v2, v3

    and-int v3, v4, v8

    .line 87
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzq()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v4

    int-to-long v8, v3

    invoke-static {v2, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 88
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_3b
    move-object v2, v3

    .line 188
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzidc;

    .line 189
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v4

    .line 190
    invoke-interface {p2, v3, v4, p3}, Lcom/google/android/gms/internal/ads/zzidp;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)V

    .line 191
    invoke-direct {p0, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzidf;->zzu(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_3c
    move-object v2, v3

    .line 192
    invoke-direct {p0, v2, v4, p2}, Lcom/google/android/gms/internal/ads/zzidf;->zzz(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzidp;)V

    .line 193
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_3d
    move-object v2, v3

    and-int v3, v4, v8

    .line 85
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzl()Z

    move-result v4

    int-to-long v8, v3

    invoke-static {v2, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzi(Ljava/lang/Object;JZ)V

    .line 86
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_3e
    move-object v2, v3

    and-int v3, v4, v8

    .line 83
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzk()I

    move-result v4

    int-to-long v8, v3

    invoke-static {v2, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zziem;->zze(Ljava/lang/Object;JI)V

    .line 84
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_3f
    move-object v2, v3

    and-int v3, v4, v8

    .line 81
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzj()J

    move-result-wide v8

    int-to-long v3, v3

    invoke-static {v2, v3, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zziem;->zzg(Ljava/lang/Object;JJ)V

    .line 82
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_40
    move-object v2, v3

    and-int v3, v4, v8

    .line 79
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzi()I

    move-result v4

    int-to-long v8, v3

    invoke-static {v2, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zziem;->zze(Ljava/lang/Object;JI)V

    .line 80
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_41
    move-object v2, v3

    and-int v3, v4, v8

    .line 77
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzg()J

    move-result-wide v8

    int-to-long v3, v3

    invoke-static {v2, v3, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zziem;->zzg(Ljava/lang/Object;JJ)V

    .line 78
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_42
    move-object v2, v3

    and-int v3, v4, v8

    .line 75
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzh()J

    move-result-wide v8

    int-to-long v3, v3

    invoke-static {v2, v3, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zziem;->zzg(Ljava/lang/Object;JJ)V

    .line 76
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_43
    move-object v2, v3

    and-int v3, v4, v8

    .line 73
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zzf()F

    move-result v4

    int-to-long v8, v3

    invoke-static {v2, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzk(Ljava/lang/Object;JF)V

    .line 74
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_44
    move-object v2, v3

    and-int v3, v4, v8

    .line 71
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidp;->zze()D

    move-result-wide v8

    int-to-long v3, v3

    invoke-static {v2, v3, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zziem;->zzm(Ljava/lang/Object;JD)V

    .line 72
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzidf;->zzO(Ljava/lang/Object;I)V
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/zzicf; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/16 :goto_a

    :catch_2
    :goto_c
    if-nez v1, :cond_10

    .line 196
    :try_start_c
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzief;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    goto :goto_e

    :catchall_3
    move-exception v0

    :goto_d
    move-object p2, v0

    goto :goto_11

    .line 197
    :cond_10
    :goto_e
    invoke-virtual {v5, v1, p2, v7}, Lcom/google/android/gms/internal/ads/zzief;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidp;I)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-nez v0, :cond_c

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzidf;->zzk:I

    move-object v4, v1

    :goto_f
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzidf;->zzl:I

    if-ge p2, p3, :cond_11

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzidf;->zzj:[I

    .line 198
    aget v3, p3, p2

    move-object v6, v2

    move-object v1, p1

    .line 199
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzidf;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzief;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    :cond_11
    :goto_10
    if-eqz v4, :cond_12

    .line 202
    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzief;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    return-void

    :catchall_4
    move-exception v0

    move-object v2, p1

    move-object p1, p0

    goto :goto_d

    .line 193
    :goto_11
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzidf;->zzk:I

    move-object v4, v1

    :goto_12
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzidf;->zzl:I

    if-ge p3, v0, :cond_13

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzidf;->zzj:[I

    .line 198
    aget v3, v0, p3

    move-object v6, v2

    move-object v1, p1

    .line 199
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzidf;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzief;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 p3, p3, 0x1

    move-object p1, p0

    goto :goto_12

    :cond_13
    if-eqz v4, :cond_14

    .line 202
    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzief;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    :cond_14
    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final zzi(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/zziab;)I
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzF(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzidf;->zzb:Lsun/misc/Unsafe;

    const/4 v12, -0x1

    move/from16 v5, p3

    move v7, v12

    const/4 v8, 0x0

    const v9, 0xfffff

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    const-string v11, "Failed to parse the message."

    const/16 v16, 0x0

    if-ge v5, v4, :cond_75

    add-int/lit8 v15, v5, 0x1

    .line 2
    aget-byte v5, v3, v5

    if-gez v5, :cond_0

    .line 3
    invoke-static {v5, v3, v15, v6}, Lcom/google/android/gms/internal/ads/zziac;->zzb(I[BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v15

    iget v5, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    :cond_0
    move v6, v15

    move v15, v5

    ushr-int/lit8 v5, v15, 0x3

    const v17, 0xfffff

    const/4 v13, 0x3

    if-le v5, v7, :cond_2

    div-int/2addr v8, v13

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzidf;->zze:I

    if-lt v5, v7, :cond_1

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzidf;->zzf:I

    if-gt v5, v7, :cond_1

    .line 4
    invoke-direct {v0, v5, v8}, Lcom/google/android/gms/internal/ads/zzidf;->zzS(II)I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v12

    goto :goto_1

    .line 5
    :cond_2
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzR(I)I

    move-result v7

    :goto_1
    if-ne v7, v12, :cond_3

    move/from16 v7, p5

    move-object/from16 v10, p6

    move-object v12, v1

    move-object v13, v2

    move-object v1, v3

    move v3, v6

    move-object/from16 v28, v11

    move v2, v15

    const/4 v8, 0x0

    move v11, v5

    goto/16 :goto_42

    :cond_3
    and-int/lit8 v8, v15, 0x7

    .line 270
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzidf;->zzc:[I

    add-int/lit8 v18, v7, 0x1

    .line 6
    aget v13, v12, v18

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzidf;->zzC(I)I

    move-result v3

    and-int v4, v13, v17

    move/from16 v18, v5

    int-to-long v4, v4

    move-wide/from16 v19, v4

    const-wide/16 v21, 0x0

    const-string v5, ""

    const-string v4, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move-object/from16 v24, v12

    const/16 v25, 0x1

    const/16 v12, 0x11

    if-gt v3, v12, :cond_15

    add-int/lit8 v12, v7, 0x2

    .line 7
    aget v12, v24, v12

    ushr-int/lit8 v23, v12, 0x14

    shl-int v23, v25, v23

    and-int v12, v12, v17

    move/from16 v27, v6

    if-eq v12, v9, :cond_6

    move/from16 v6, v17

    move/from16 v28, v7

    if-eq v9, v6, :cond_4

    int-to-long v6, v9

    .line 8
    invoke-virtual {v1, v2, v6, v7, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v6, 0xfffff

    :cond_4
    if-ne v12, v6, :cond_5

    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    int-to-long v6, v12

    .line 9
    invoke-virtual {v1, v2, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :goto_2
    move v14, v6

    goto :goto_3

    :cond_6
    move/from16 v28, v7

    move v12, v9

    :goto_3
    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x3

    if-ne v8, v3, :cond_7

    or-int v14, v14, v23

    move/from16 v7, v28

    .line 10
    invoke-direct {v0, v2, v7}, Lcom/google/android/gms/internal/ads/zzidf;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    shl-int/lit8 v4, v18, 0x3

    or-int/lit8 v8, v4, 0x4

    .line 11
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v4

    move-object/from16 v5, p2

    move-object/from16 v9, p6

    move v13, v7

    move/from16 v6, v27

    move/from16 v7, p4

    .line 12
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zziac;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;[BIIILcom/google/android/gms/internal/ads/zziab;)I

    move-result v4

    move-object v7, v5

    .line 13
    invoke-direct {v0, v2, v13, v3}, Lcom/google/android/gms/internal/ads/zzidf;->zzu(Ljava/lang/Object;ILjava/lang/Object;)V

    move v5, v4

    move-object v3, v7

    move-object v6, v9

    move v9, v12

    move v8, v13

    move/from16 v7, v18

    const/4 v12, -0x1

    :goto_4
    move/from16 v4, p4

    goto/16 :goto_0

    :cond_7
    move-object/from16 v7, p2

    move-object v9, v1

    move-object v1, v2

    move/from16 p3, v12

    move v2, v14

    move/from16 v19, v15

    move/from16 v6, v27

    move/from16 v15, v28

    move-object/from16 v12, p6

    goto/16 :goto_14

    :pswitch_0
    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move/from16 v4, v27

    move/from16 v13, v28

    if-nez v8, :cond_8

    or-int v14, v14, v23

    .line 14
    invoke-static {v7, v4, v9}, Lcom/google/android/gms/internal/ads/zziac;->zzc([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v8

    iget-wide v3, v9, Lcom/google/android/gms/internal/ads/zziab;->zzb:J

    .line 15
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zziaq;->zzL(J)J

    move-result-wide v5

    move-wide/from16 v3, v19

    .line 16
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v29, v2

    move-object v2, v1

    move-object/from16 v1, v29

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v4, p4

    move-object v3, v7

    move v5, v8

    :goto_5
    move-object v6, v9

    move v9, v12

    move v8, v13

    move/from16 v7, v18

    :goto_6
    const/4 v12, -0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v29, v2

    move-object v2, v1

    move-object/from16 v1, v29

    :cond_9
    move v6, v4

    move/from16 p3, v12

    move/from16 v19, v15

    move-object v12, v9

    move v15, v13

    move-object v9, v2

    :goto_7
    move v2, v14

    goto/16 :goto_14

    :pswitch_1
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move-wide/from16 v5, v19

    move/from16 v4, v27

    move/from16 v13, v28

    if-nez v8, :cond_9

    or-int v14, v14, v23

    .line 17
    invoke-static {v7, v4, v9}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v3

    iget v4, v9, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    .line 18
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zziaq;->zzK(I)I

    move-result v4

    .line 19
    invoke-virtual {v2, v1, v5, v6, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move/from16 v4, p4

    move v5, v3

    move-object v3, v7

    goto :goto_5

    :pswitch_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move-wide/from16 v5, v19

    move/from16 v4, v27

    move/from16 v3, v28

    if-nez v8, :cond_c

    .line 20
    invoke-static {v7, v4, v9}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v4

    iget v8, v9, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    .line 21
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzidf;->zzs(I)Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v11

    const/high16 v16, -0x80000000

    and-int v13, v13, v16

    if-eqz v13, :cond_a

    if-eqz v11, :cond_a

    .line 22
    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/ads/zzibx;->zza(I)Z

    move-result v11

    if-eqz v11, :cond_b

    :cond_a
    move/from16 p3, v12

    goto :goto_9

    .line 24
    :cond_b
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzieg;

    move-result-object v5

    move/from16 p3, v12

    int-to-long v11, v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v15, v6}, Lcom/google/android/gms/internal/ads/zzieg;->zzk(ILjava/lang/Object;)V

    :goto_8
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move v8, v3

    move v5, v4

    move-object v3, v7

    move-object v6, v9

    move/from16 v7, v18

    const/4 v12, -0x1

    move/from16 v9, p3

    goto/16 :goto_4

    :goto_9
    or-int v14, v14, v23

    .line 23
    invoke-virtual {v2, v1, v5, v6, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :cond_c
    move/from16 p3, v12

    :cond_d
    move v6, v4

    :goto_a
    move-object v12, v9

    move/from16 v19, v15

    move-object v9, v2

    move v15, v3

    goto :goto_7

    :pswitch_3
    move-object/from16 p3, v2

    move-object v2, v1

    move-object/from16 v1, p3

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move/from16 p3, v12

    move-wide/from16 v5, v19

    move/from16 v4, v27

    move/from16 v3, v28

    const/4 v12, 0x2

    if-ne v8, v12, :cond_d

    or-int v14, v14, v23

    .line 25
    invoke-static {v7, v4, v9}, Lcom/google/android/gms/internal/ads/zziac;->zzg([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v4

    iget-object v8, v9, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    .line 26
    invoke-virtual {v2, v1, v5, v6, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_4
    move-object/from16 p3, v2

    move-object v2, v1

    move-object/from16 v1, p3

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move/from16 p3, v12

    move/from16 v4, v27

    move/from16 v3, v28

    const/4 v12, 0x2

    if-ne v8, v12, :cond_e

    or-int v14, v14, v23

    move-object v5, v1

    .line 27
    invoke-direct {v0, v5, v3}, Lcom/google/android/gms/internal/ads/zzidf;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v2

    .line 28
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v2

    move-object v8, v9

    move-object v9, v6

    move-object v6, v8

    move v8, v3

    move-object v3, v7

    move-object v7, v5

    move/from16 v5, p4

    .line 29
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zziac;->zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;[BIILcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    move-object v4, v1

    move-object v1, v3

    move-object v3, v6

    .line 30
    invoke-direct {v0, v7, v8, v4}, Lcom/google/android/gms/internal/ads/zzidf;->zzu(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v4, p4

    move v5, v2

    move-object v2, v7

    move/from16 v7, v18

    :goto_b
    const/4 v12, -0x1

    move-object v3, v1

    move-object v1, v9

    :goto_c
    move/from16 v9, p3

    goto/16 :goto_0

    :cond_e
    move-object v6, v7

    move-object v7, v1

    move-object v1, v6

    move v6, v4

    move-object v12, v7

    move-object v7, v1

    move-object v1, v12

    goto :goto_a

    :pswitch_5
    move-object/from16 v3, p6

    move-object v9, v1

    move-object v7, v2

    move/from16 p3, v12

    move v2, v14

    move/from16 v6, v27

    const/4 v12, 0x2

    move-object/from16 v1, p2

    move-wide/from16 v29, v19

    move/from16 v19, v15

    move-wide/from16 v14, v29

    if-ne v8, v12, :cond_12

    or-int v2, v2, v23

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzidf;->zzD(I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 31
    invoke-static {v1, v6, v3}, Lcom/google/android/gms/internal/ads/zziac;->zzf([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v4

    move v5, v4

    goto :goto_e

    .line 32
    :cond_f
    invoke-static {v1, v6, v3}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v6

    iget v8, v3, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-ltz v8, :cond_11

    if-nez v8, :cond_10

    .line 276
    iput-object v5, v3, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    :goto_d
    move v5, v6

    goto :goto_e

    :cond_10
    new-instance v4, Ljava/lang/String;

    .line 33
    sget-object v5, Lcom/google/android/gms/internal/ads/zzice;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v6, v8, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    add-int/2addr v6, v8

    goto :goto_d

    .line 31
    :goto_e
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    .line 34
    invoke-virtual {v9, v7, v14, v15, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_f
    move/from16 v4, p4

    move v14, v2

    move-object v6, v3

    move-object v2, v7

    move/from16 v7, v18

    move/from16 v15, v19

    move/from16 v8, v28

    goto :goto_b

    .line 32
    :cond_11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 275
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 276
    throw v1

    :cond_12
    move-object v12, v7

    move-object v7, v1

    move-object v1, v12

    move-object v12, v3

    move/from16 v15, v28

    goto/16 :goto_14

    :pswitch_6
    move-object/from16 v3, p6

    move-object v9, v1

    move-object v7, v2

    move/from16 p3, v12

    move v2, v14

    move/from16 v6, v27

    move-object/from16 v1, p2

    move-wide/from16 v29, v19

    move/from16 v19, v15

    move-wide/from16 v14, v29

    if-nez v8, :cond_12

    or-int v2, v2, v23

    .line 35
    invoke-static {v1, v6, v3}, Lcom/google/android/gms/internal/ads/zziac;->zzc([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v5

    iget-wide v11, v3, Lcom/google/android/gms/internal/ads/zziab;->zzb:J

    cmp-long v4, v11, v21

    if-eqz v4, :cond_13

    move/from16 v12, v25

    goto :goto_10

    :cond_13
    const/4 v12, 0x0

    .line 36
    :goto_10
    invoke-static {v7, v14, v15, v12}, Lcom/google/android/gms/internal/ads/zziem;->zzi(Ljava/lang/Object;JZ)V

    goto :goto_f

    :pswitch_7
    move-object/from16 v3, p6

    move-object v9, v1

    move-object v7, v2

    move/from16 p3, v12

    move v2, v14

    move/from16 v6, v27

    const/4 v4, 0x5

    move-object/from16 v1, p2

    move-wide/from16 v29, v19

    move/from16 v19, v15

    move-wide/from16 v14, v29

    if-ne v8, v4, :cond_12

    add-int/lit8 v5, v6, 0x4

    or-int v2, v2, v23

    .line 37
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zziac;->zzd([BI)I

    move-result v4

    invoke-virtual {v9, v7, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_f

    :pswitch_8
    move-object/from16 v3, p6

    move-object v9, v1

    move-object v7, v2

    move/from16 p3, v12

    move v2, v14

    move/from16 v4, v25

    move/from16 v6, v27

    move-object/from16 v1, p2

    move-wide/from16 v29, v19

    move/from16 v19, v15

    move-wide/from16 v14, v29

    if-ne v8, v4, :cond_12

    add-int/lit8 v8, v6, 0x8

    or-int v11, v2, v23

    .line 38
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zziac;->zze([BI)J

    move-result-wide v5

    move-object v12, v3

    move-object v2, v7

    move-wide v3, v14

    move/from16 v15, v28

    move-object v7, v1

    move-object v1, v9

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v9, p3

    move/from16 v4, p4

    move-object v3, v7

    move v5, v8

    move v14, v11

    :goto_11
    move-object v6, v12

    move v8, v15

    move/from16 v7, v18

    move/from16 v15, v19

    goto/16 :goto_6

    :pswitch_9
    move-object/from16 v7, p2

    move-object v9, v1

    move-object v1, v2

    move/from16 p3, v12

    move v2, v14

    move-wide/from16 v3, v19

    move/from16 v6, v27

    move-object/from16 v12, p6

    move/from16 v19, v15

    move/from16 v15, v28

    if-nez v8, :cond_14

    or-int v14, v2, v23

    .line 39
    invoke-static {v7, v6, v12}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v5

    iget v2, v12, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    .line 40
    invoke-virtual {v9, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_12
    move/from16 v4, p4

    move-object v2, v1

    move-object v3, v7

    :goto_13
    move-object v1, v9

    move-object v6, v12

    move v8, v15

    move/from16 v7, v18

    move/from16 v15, v19

    const/4 v12, -0x1

    goto/16 :goto_c

    :pswitch_a
    move-object/from16 v7, p2

    move-object v9, v1

    move-object v1, v2

    move/from16 p3, v12

    move v2, v14

    move-wide/from16 v3, v19

    move/from16 v6, v27

    move-object/from16 v12, p6

    move/from16 v19, v15

    move/from16 v15, v28

    if-nez v8, :cond_14

    or-int v14, v2, v23

    .line 41
    invoke-static {v7, v6, v12}, Lcom/google/android/gms/internal/ads/zziac;->zzc([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v8

    iget-wide v5, v12, Lcom/google/android/gms/internal/ads/zziab;->zzb:J

    move-object v2, v1

    move-object v1, v9

    .line 42
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v9, p3

    move/from16 v4, p4

    move-object v3, v7

    move v5, v8

    goto :goto_11

    :pswitch_b
    move-object/from16 v7, p2

    move-object v9, v1

    move-object v1, v2

    move/from16 p3, v12

    move v2, v14

    move-wide/from16 v3, v19

    move/from16 v6, v27

    const/4 v5, 0x5

    move-object/from16 v12, p6

    move/from16 v19, v15

    move/from16 v15, v28

    if-ne v8, v5, :cond_14

    add-int/lit8 v5, v6, 0x4

    or-int v14, v2, v23

    .line 43
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zziac;->zzd([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 44
    invoke-static {v1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zziem;->zzk(Ljava/lang/Object;JF)V

    goto :goto_12

    :pswitch_c
    move-object/from16 v7, p2

    move-object v9, v1

    move-object v1, v2

    move/from16 p3, v12

    move v2, v14

    move-wide/from16 v3, v19

    move/from16 v5, v25

    move/from16 v6, v27

    move-object/from16 v12, p6

    move/from16 v19, v15

    move/from16 v15, v28

    if-ne v8, v5, :cond_14

    add-int/lit8 v5, v6, 0x8

    or-int v14, v2, v23

    .line 45
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zziac;->zze([BI)J

    move-result-wide v20

    move v8, v5

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 46
    invoke-static {v1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zziem;->zzm(Ljava/lang/Object;JD)V

    move/from16 v4, p4

    move-object v2, v1

    move-object v3, v7

    move v5, v8

    goto :goto_13

    :cond_14
    :goto_14
    move-object v13, v1

    move v14, v2

    move v3, v6

    move-object v1, v7

    move-object/from16 v28, v11

    move-object v10, v12

    move v8, v15

    move/from16 v11, v18

    move/from16 v2, v19

    move/from16 v7, p5

    move-object v12, v9

    move/from16 v9, p3

    goto/16 :goto_42

    :cond_15
    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    move-object/from16 v12, p6

    move/from16 v27, v6

    move/from16 v29, v15

    move v15, v7

    move-wide/from16 v6, v19

    move/from16 v20, v9

    move/from16 v19, v29

    const/16 v9, 0x1b

    if-ne v3, v9, :cond_19

    const/4 v9, 0x2

    if-ne v8, v9, :cond_18

    .line 47
    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzicd;

    .line 48
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzicd;->zza()Z

    move-result v4

    if-nez v4, :cond_17

    .line 49
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_16

    const/16 v4, 0xa

    goto :goto_15

    :cond_16
    add-int/2addr v4, v4

    .line 50
    :goto_15
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzicd;->zzh(I)Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v3

    .line 51
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_17
    move-object v6, v3

    .line 52
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v1

    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v7, v12

    move/from16 v4, v27

    move-object v12, v2

    move/from16 v2, v19

    .line 53
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zziac;->zzn(Lcom/google/android/gms/internal/ads/zzidu;I[BIILcom/google/android/gms/internal/ads/zzicd;Lcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    move/from16 v4, p4

    move-object/from16 v6, p6

    move v5, v1

    move-object v1, v12

    move v8, v15

    move/from16 v7, v18

    const/4 v12, -0x1

    move v15, v2

    move-object v2, v9

    move/from16 v9, v20

    goto/16 :goto_0

    :cond_18
    move-object v12, v2

    move-object/from16 v4, p2

    move-object/from16 v5, p6

    move-object v13, v1

    move-object v9, v11

    move/from16 v23, v14

    move/from16 v11, v18

    move/from16 v10, v27

    :goto_16
    move/from16 v3, p4

    goto/16 :goto_38

    :cond_19
    move-object v9, v1

    move-object v12, v2

    move/from16 v2, v19

    const/16 v1, 0x31

    const-string v2, "Protocol message had invalid UTF-8."

    move/from16 v23, v14

    const-string v14, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    if-gt v3, v1, :cond_58

    move-object/from16 v28, v11

    int-to-long v10, v13

    .line 54
    invoke-virtual {v12, v9, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzicd;

    .line 55
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzicd;->zza()Z

    move-result v13

    if-nez v13, :cond_1a

    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    add-int/2addr v13, v13

    .line 57
    invoke-interface {v1, v13}, Lcom/google/android/gms/internal/ads/zzicd;->zzh(I)Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v1

    .line 58
    invoke-virtual {v12, v9, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1a
    move-object v7, v1

    packed-switch v3, :pswitch_data_1

    const/4 v3, 0x3

    if-ne v8, v3, :cond_1c

    and-int/lit8 v1, v19, -0x8

    or-int/lit8 v5, v1, 0x4

    .line 59
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v10, v19

    move/from16 v3, v27

    .line 60
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zziac;->zzi(Lcom/google/android/gms/internal/ads/zzidu;[BIIILcom/google/android/gms/internal/ads/zziab;)I

    move-result v8

    move v11, v3

    iget-object v3, v6, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    .line 61
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_17
    if-ge v8, v4, :cond_1b

    .line 62
    invoke-static {v2, v8, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v3

    iget v13, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-ne v10, v13, :cond_1b

    .line 63
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zziac;->zzi(Lcom/google/android/gms/internal/ads/zzidu;[BIIILcom/google/android/gms/internal/ads/zziab;)I

    move-result v8

    iget-object v3, v6, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    .line 64
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_1b
    move v5, v8

    :goto_18
    move v3, v11

    :goto_19
    move v11, v4

    move-object v4, v2

    move-object v2, v6

    goto/16 :goto_33

    :cond_1c
    move-object/from16 v4, p2

    move/from16 v11, p4

    move-object/from16 v2, p6

    move/from16 v10, v19

    move/from16 v3, v27

    goto/16 :goto_32

    :pswitch_d
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v10, v19

    move/from16 v11, v27

    const/4 v1, 0x2

    if-ne v8, v1, :cond_20

    .line 65
    sget v1, Lcom/google/android/gms/internal/ads/zziac;->$r8$clinit:I

    .line 66
    check-cast v7, Lcom/google/android/gms/internal/ads/zzicq;

    .line 67
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget v3, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    add-int/2addr v3, v1

    :goto_1a
    if-ge v1, v3, :cond_1d

    .line 68
    invoke-static {v2, v1, v6}, Lcom/google/android/gms/internal/ads/zziac;->zzc([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget-wide v8, v6, Lcom/google/android/gms/internal/ads/zziab;->zzb:J

    .line 69
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zziaq;->zzL(J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    move-object/from16 v9, p1

    goto :goto_1a

    :cond_1d
    if-ne v1, v3, :cond_1f

    :cond_1e
    :goto_1b
    move v5, v1

    goto :goto_18

    .line 320
    :cond_1f
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 277
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 278
    throw v1

    :cond_20
    if-nez v8, :cond_21

    .line 70
    sget v1, Lcom/google/android/gms/internal/ads/zziac;->$r8$clinit:I

    .line 71
    check-cast v7, Lcom/google/android/gms/internal/ads/zzicq;

    .line 72
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/ads/zziac;->zzc([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget-wide v8, v6, Lcom/google/android/gms/internal/ads/zziab;->zzb:J

    .line 73
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zziaq;->zzL(J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    :goto_1c
    if-ge v1, v4, :cond_1e

    .line 74
    invoke-static {v2, v1, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v3

    iget v5, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-ne v10, v5, :cond_1e

    .line 75
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/ads/zziac;->zzc([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget-wide v8, v6, Lcom/google/android/gms/internal/ads/zziab;->zzb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zziaq;->zzL(J)J

    move-result-wide v8

    .line 76
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    goto :goto_1c

    :cond_21
    move v3, v11

    :goto_1d
    move v11, v4

    move-object v4, v2

    move-object v2, v6

    goto/16 :goto_32

    :pswitch_e
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v10, v19

    move/from16 v11, v27

    const/4 v9, 0x2

    if-ne v8, v9, :cond_24

    .line 77
    sget v1, Lcom/google/android/gms/internal/ads/zziac;->$r8$clinit:I

    .line 78
    check-cast v7, Lcom/google/android/gms/internal/ads/zzibs;

    .line 79
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget v3, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    add-int/2addr v3, v1

    :goto_1e
    if-ge v1, v3, :cond_22

    .line 80
    invoke-static {v2, v1, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget v5, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    .line 81
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zziaq;->zzK(I)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    goto :goto_1e

    :cond_22
    if-ne v1, v3, :cond_23

    goto :goto_1b

    .line 278
    :cond_23
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 279
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 280
    throw v1

    :cond_24
    if-nez v8, :cond_21

    .line 82
    sget v1, Lcom/google/android/gms/internal/ads/zziac;->$r8$clinit:I

    .line 83
    check-cast v7, Lcom/google/android/gms/internal/ads/zzibs;

    .line 84
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget v3, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    .line 85
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zziaq;->zzK(I)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    :goto_1f
    if-ge v1, v4, :cond_1e

    .line 86
    invoke-static {v2, v1, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v3

    iget v5, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-ne v10, v5, :cond_1e

    .line 87
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget v3, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zziaq;->zzK(I)I

    move-result v3

    .line 88
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    goto :goto_1f

    :pswitch_f
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v10, v19

    move/from16 v11, v27

    const/4 v9, 0x2

    if-ne v8, v9, :cond_25

    .line 89
    invoke-static {v2, v11, v7, v6}, Lcom/google/android/gms/internal/ads/zziac;->zzm([BILcom/google/android/gms/internal/ads/zzicd;Lcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    move-object v5, v7

    move v13, v11

    move v11, v10

    move v8, v1

    move-object v9, v2

    move-object v7, v6

    move v10, v4

    goto :goto_20

    :cond_25
    if-nez v8, :cond_26

    move-object v5, v7

    move v1, v10

    move v3, v11

    .line 90
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zziac;->zzl(I[BIILcom/google/android/gms/internal/ads/zzicd;Lcom/google/android/gms/internal/ads/zziab;)I

    move-result v7

    move v11, v1

    move v13, v3

    move v1, v7

    move-object v9, v2

    move v10, v4

    move-object v7, v6

    move v8, v1

    .line 91
    :goto_20
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzidf;->zzs(I)Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v4

    move-object v3, v5

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzidf;->zzm:Lcom/google/android/gms/internal/ads/zzief;

    move-object/from16 v1, p1

    move/from16 v2, v18

    .line 92
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzidw;->zzJ(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/ads/zzibx;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzief;)Ljava/lang/Object;

    move v3, v11

    move v11, v10

    move v10, v3

    move-object v2, v7

    move v5, v8

    :goto_21
    move-object v4, v9

    move v3, v13

    goto/16 :goto_33

    :cond_26
    move v13, v11

    move v11, v10

    move v3, v13

    goto/16 :goto_1d

    :pswitch_10
    move-object/from16 v9, p2

    move/from16 v10, p4

    move-object v5, v7

    move/from16 v11, v19

    move/from16 v13, v27

    const/4 v1, 0x2

    move-object/from16 v7, p6

    if-ne v8, v1, :cond_2e

    .line 93
    invoke-static {v9, v13, v7}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-ltz v2, :cond_2d

    .line 94
    array-length v3, v9

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_2c

    if-nez v2, :cond_27

    .line 95
    sget-object v2, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 96
    :cond_27
    invoke-static {v9, v1, v2}, Lcom/google/android/gms/internal/ads/zzian;->zzs([BII)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_22
    add-int/2addr v1, v2

    :goto_23
    if-ge v1, v10, :cond_2b

    .line 97
    invoke-static {v9, v1, v7}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    iget v3, v7, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-ne v11, v3, :cond_2b

    .line 98
    invoke-static {v9, v2, v7}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-ltz v2, :cond_2a

    .line 99
    array-length v3, v9

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_29

    if-nez v2, :cond_28

    .line 288
    sget-object v2, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    .line 100
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 101
    :cond_28
    invoke-static {v9, v1, v2}, Lcom/google/android/gms/internal/ads/zzian;->zzs([BII)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 99
    :cond_29
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 287
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 288
    throw v1

    .line 98
    :cond_2a
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 285
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 286
    throw v1

    :cond_2b
    move v2, v11

    move v11, v10

    move v10, v2

    move v5, v1

    move-object v2, v7

    goto :goto_21

    .line 94
    :cond_2c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 283
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 284
    throw v1

    .line 93
    :cond_2d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 281
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 282
    throw v1

    :cond_2e
    move v2, v11

    move v11, v10

    move v10, v2

    move-object v2, v7

    move-object v4, v9

    move v3, v13

    goto/16 :goto_32

    :pswitch_11
    move-object/from16 v9, p2

    move/from16 v10, p4

    move-object v5, v7

    move/from16 v11, v19

    move/from16 v13, v27

    const/4 v1, 0x2

    move-object/from16 v7, p6

    if-ne v8, v1, :cond_2e

    .line 102
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v1

    move-object v6, v5

    move-object v3, v9

    move v5, v10

    move v2, v11

    move v4, v13

    .line 103
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zziac;->zzn(Lcom/google/android/gms/internal/ads/zzidu;I[BIILcom/google/android/gms/internal/ads/zzicd;Lcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    move v10, v4

    move-object v4, v3

    move v3, v10

    move v10, v2

    move v11, v5

    move-object v2, v7

    :cond_2f
    :goto_24
    move v5, v1

    goto/16 :goto_33

    :pswitch_12
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move/from16 v13, v19

    move/from16 v14, v27

    const/4 v1, 0x2

    move-wide/from16 v26, v10

    move-object v10, v7

    move/from16 v7, p4

    if-ne v8, v1, :cond_3d

    const-wide/32 v24, 0x20000000

    and-long v24, v26, v24

    cmp-long v1, v24, v21

    if-nez v1, :cond_35

    .line 104
    invoke-static {v3, v14, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-ltz v2, :cond_34

    if-nez v2, :cond_30

    .line 105
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 112
    :cond_30
    new-instance v8, Ljava/lang/String;

    .line 106
    sget-object v11, Lcom/google/android/gms/internal/ads/zzice;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v2, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 107
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_25
    add-int/2addr v1, v2

    :goto_26
    if-ge v1, v7, :cond_33

    .line 108
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    iget v8, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-ne v13, v8, :cond_33

    .line 109
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-ltz v2, :cond_32

    if-nez v2, :cond_31

    .line 110
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_31
    new-instance v8, Ljava/lang/String;

    .line 111
    sget-object v11, Lcom/google/android/gms/internal/ads/zzice;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v2, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 112
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 109
    :cond_32
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 291
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 292
    throw v1

    :cond_33
    move v5, v1

    move-object v4, v3

    move-object v2, v6

    move v11, v7

    move v10, v13

    move v3, v14

    goto/16 :goto_33

    .line 104
    :cond_34
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 289
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 290
    throw v1

    .line 113
    :cond_35
    invoke-static {v3, v14, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget v8, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-ltz v8, :cond_3c

    if-nez v8, :cond_36

    .line 114
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v27, v14

    goto :goto_28

    :cond_36
    add-int v11, v1, v8

    .line 115
    invoke-static {v3, v1, v11}, Lcom/google/android/gms/internal/ads/zzier;->zzb([BII)Z

    move-result v19

    if-eqz v19, :cond_3b

    move/from16 p3, v11

    .line 296
    new-instance v11, Ljava/lang/String;

    move/from16 v27, v14

    .line 116
    sget-object v14, Lcom/google/android/gms/internal/ads/zzice;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v11, v3, v1, v8, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 117
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_27
    move/from16 v1, p3

    :goto_28
    if-ge v1, v7, :cond_3a

    .line 118
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v8

    iget v11, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-ne v13, v11, :cond_3a

    .line 119
    invoke-static {v3, v8, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget v8, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-ltz v8, :cond_39

    if-nez v8, :cond_37

    .line 120
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_37
    add-int v11, v1, v8

    .line 121
    invoke-static {v3, v1, v11}, Lcom/google/android/gms/internal/ads/zzier;->zzb([BII)Z

    move-result v14

    if-eqz v14, :cond_38

    .line 300
    new-instance v14, Ljava/lang/String;

    move/from16 p3, v11

    .line 122
    sget-object v11, Lcom/google/android/gms/internal/ads/zzice;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v14, v3, v1, v8, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 123
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 121
    :cond_38
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 299
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 300
    throw v1

    .line 119
    :cond_39
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 297
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 298
    throw v1

    :cond_3a
    move v5, v1

    move-object v4, v3

    move-object v2, v6

    move v11, v7

    move v10, v13

    move/from16 v3, v27

    goto/16 :goto_33

    .line 115
    :cond_3b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 295
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 296
    throw v1

    .line 113
    :cond_3c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 293
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 294
    throw v1

    :cond_3d
    move-object v4, v3

    move-object v2, v6

    move v11, v7

    move v10, v13

    move v3, v14

    goto/16 :goto_32

    :pswitch_13
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move-object v10, v7

    move/from16 v13, v19

    move/from16 v4, v27

    const/4 v1, 0x2

    move/from16 v7, p4

    if-ne v8, v1, :cond_41

    .line 124
    sget v1, Lcom/google/android/gms/internal/ads/zziac;->$r8$clinit:I

    .line 125
    invoke-static {v10}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 126
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_40

    if-ne v1, v2, :cond_3f

    :cond_3e
    :goto_29
    move v2, v4

    move-object v4, v3

    move v3, v2

    move v5, v1

    :goto_2a
    move-object v2, v6

    move v11, v7

    move v10, v13

    goto/16 :goto_33

    .line 280
    :cond_3f
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 301
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 302
    throw v1

    .line 127
    :cond_40
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/ads/zziac;->zzc([BILcom/google/android/gms/internal/ads/zziab;)I

    .line 128
    throw v16

    :cond_41
    if-eqz v8, :cond_43

    :cond_42
    move v2, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v6

    move v11, v7

    move v10, v13

    goto/16 :goto_32

    .line 129
    :cond_43
    sget v1, Lcom/google/android/gms/internal/ads/zziac;->$r8$clinit:I

    .line 130
    invoke-static {v10}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 131
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/ads/zziac;->zzc([BILcom/google/android/gms/internal/ads/zziab;)I

    iget-wide v1, v6, Lcom/google/android/gms/internal/ads/zziab;->zzb:J

    .line 132
    throw v16

    :pswitch_14
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move-object v10, v7

    move/from16 v13, v19

    move/from16 v4, v27

    const/4 v1, 0x2

    move/from16 v7, p4

    if-ne v8, v1, :cond_47

    .line 136
    sget v1, Lcom/google/android/gms/internal/ads/zziac;->$r8$clinit:I

    .line 137
    move-object v1, v10

    check-cast v1, Lcom/google/android/gms/internal/ads/zzibs;

    .line 138
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    iget v5, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    add-int v8, v2, v5

    .line 139
    array-length v10, v3

    if-gt v8, v10, :cond_46

    .line 140
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibs;->size()I

    move-result v10

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v10, v5

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzibs;->zzj(I)V

    :goto_2b
    if-ge v2, v8, :cond_44

    .line 141
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zziac;->zzd([BI)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_2b

    :cond_44
    if-ne v2, v8, :cond_45

    :goto_2c
    move v5, v4

    move-object v4, v3

    move v3, v5

    move v5, v2

    goto :goto_2a

    .line 302
    :cond_45
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 305
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 306
    throw v1

    .line 139
    :cond_46
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 303
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 304
    throw v1

    :cond_47
    const/4 v5, 0x5

    if-ne v8, v5, :cond_42

    add-int/lit8 v1, v4, 0x4

    .line 142
    sget v2, Lcom/google/android/gms/internal/ads/zziac;->$r8$clinit:I

    .line 143
    move-object v2, v10

    check-cast v2, Lcom/google/android/gms/internal/ads/zzibs;

    .line 144
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zziac;->zzd([BI)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    :goto_2d
    if-ge v1, v7, :cond_3e

    .line 145
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v5

    iget v8, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-ne v13, v8, :cond_3e

    .line 146
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zziac;->zzd([BI)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    add-int/lit8 v1, v5, 0x4

    goto :goto_2d

    :pswitch_15
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move-object v10, v7

    move/from16 v13, v19

    move/from16 v4, v27

    const/4 v1, 0x2

    move/from16 v7, p4

    if-ne v8, v1, :cond_4b

    .line 147
    sget v1, Lcom/google/android/gms/internal/ads/zziac;->$r8$clinit:I

    .line 148
    move-object v1, v10

    check-cast v1, Lcom/google/android/gms/internal/ads/zzicq;

    .line 149
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    iget v5, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    add-int v8, v2, v5

    .line 150
    array-length v10, v3

    if-gt v8, v10, :cond_4a

    .line 151
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzicq;->size()I

    move-result v10

    div-int/lit8 v5, v5, 0x8

    add-int/2addr v10, v5

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzicq;->zzi(I)V

    :goto_2e
    if-ge v2, v8, :cond_48

    .line 152
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zziac;->zze([BI)J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    add-int/lit8 v2, v2, 0x8

    goto :goto_2e

    :cond_48
    if-ne v2, v8, :cond_49

    goto :goto_2c

    .line 306
    :cond_49
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 309
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 310
    throw v1

    .line 150
    :cond_4a
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 307
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 308
    throw v1

    :cond_4b
    const/4 v5, 0x1

    if-ne v8, v5, :cond_42

    add-int/lit8 v1, v4, 0x8

    .line 153
    sget v2, Lcom/google/android/gms/internal/ads/zziac;->$r8$clinit:I

    .line 154
    move-object v2, v10

    check-cast v2, Lcom/google/android/gms/internal/ads/zzicq;

    .line 155
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zziac;->zze([BI)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    :goto_2f
    if-ge v1, v7, :cond_3e

    .line 156
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v5

    iget v8, v6, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-ne v13, v8, :cond_3e

    .line 157
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zziac;->zze([BI)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    add-int/lit8 v1, v5, 0x8

    goto :goto_2f

    :pswitch_16
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move-object v10, v7

    move/from16 v13, v19

    move/from16 v4, v27

    const/4 v1, 0x2

    move/from16 v7, p4

    if-ne v8, v1, :cond_4c

    .line 158
    invoke-static {v3, v4, v10, v6}, Lcom/google/android/gms/internal/ads/zziac;->zzm([BILcom/google/android/gms/internal/ads/zzicd;Lcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    goto/16 :goto_29

    :cond_4c
    if-nez v8, :cond_42

    move-object v2, v3

    move v3, v4

    move v4, v7

    move-object v5, v10

    move v1, v13

    .line 159
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zziac;->zzl(I[BIILcom/google/android/gms/internal/ads/zzicd;Lcom/google/android/gms/internal/ads/zziab;)I

    move-result v5

    move v10, v1

    goto/16 :goto_19

    :pswitch_17
    move-object/from16 v4, p2

    move/from16 v11, p4

    move-object/from16 v2, p6

    move-object v5, v7

    move/from16 v10, v19

    move/from16 v3, v27

    const/4 v1, 0x2

    if-ne v8, v1, :cond_4f

    .line 160
    sget v1, Lcom/google/android/gms/internal/ads/zziac;->$r8$clinit:I

    .line 161
    move-object v7, v5

    check-cast v7, Lcom/google/android/gms/internal/ads/zzicq;

    .line 162
    invoke-static {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget v5, v2, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    add-int/2addr v5, v1

    :goto_30
    if-ge v1, v5, :cond_4d

    .line 163
    invoke-static {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zziac;->zzc([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zziab;->zzb:J

    .line 164
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    goto :goto_30

    :cond_4d
    if-ne v1, v5, :cond_4e

    goto/16 :goto_24

    .line 310
    :cond_4e
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 311
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 312
    throw v1

    :cond_4f
    if-nez v8, :cond_55

    .line 165
    sget v1, Lcom/google/android/gms/internal/ads/zziac;->$r8$clinit:I

    .line 166
    move-object v7, v5

    check-cast v7, Lcom/google/android/gms/internal/ads/zzicq;

    .line 167
    invoke-static {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zziac;->zzc([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/zziab;->zzb:J

    .line 168
    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    :goto_31
    if-ge v1, v11, :cond_2f

    .line 169
    invoke-static {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v5

    iget v6, v2, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-ne v10, v6, :cond_2f

    .line 170
    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zziac;->zzc([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/zziab;->zzb:J

    .line 171
    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    goto :goto_31

    :pswitch_18
    move-object/from16 v4, p2

    move/from16 v11, p4

    move-object/from16 v2, p6

    move-object v5, v7

    move/from16 v10, v19

    move/from16 v3, v27

    const/4 v1, 0x2

    if-ne v8, v1, :cond_51

    .line 172
    sget v1, Lcom/google/android/gms/internal/ads/zziac;->$r8$clinit:I

    .line 173
    invoke-static {v5}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 174
    invoke-static {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget v2, v2, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    add-int/2addr v1, v2

    .line 175
    array-length v2, v4

    if-le v1, v2, :cond_50

    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 313
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 314
    throw v1

    .line 176
    :cond_50
    throw v16

    :cond_51
    const/4 v1, 0x5

    if-eq v8, v1, :cond_52

    goto :goto_32

    .line 179
    :cond_52
    sget v1, Lcom/google/android/gms/internal/ads/zziac;->$r8$clinit:I

    .line 180
    invoke-static {v5}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 181
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zziac;->zzd([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 182
    throw v16

    :pswitch_19
    move-object/from16 v4, p2

    move/from16 v11, p4

    move-object/from16 v2, p6

    move-object v5, v7

    move/from16 v10, v19

    move/from16 v3, v27

    const/4 v1, 0x2

    if-ne v8, v1, :cond_54

    .line 186
    sget v1, Lcom/google/android/gms/internal/ads/zziac;->$r8$clinit:I

    .line 187
    invoke-static {v5}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 188
    invoke-static {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget v2, v2, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    add-int/2addr v1, v2

    .line 189
    array-length v2, v4

    if-le v1, v2, :cond_53

    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 317
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 318
    throw v1

    .line 190
    :cond_53
    throw v16

    :cond_54
    const/4 v1, 0x1

    if-eq v8, v1, :cond_57

    :cond_55
    :goto_32
    move v5, v3

    :goto_33
    if-eq v5, v3, :cond_56

    move-object v6, v2

    move-object v3, v4

    move v4, v11

    move-object v1, v12

    move v8, v15

    move/from16 v7, v18

    move/from16 v9, v20

    move/from16 v14, v23

    const/4 v12, -0x1

    move-object/from16 v2, p1

    move v15, v10

    goto/16 :goto_0

    :cond_56
    move v1, v10

    move-object v10, v2

    move v2, v1

    move-object/from16 v13, p1

    move/from16 v7, p5

    move-object v1, v4

    move v3, v5

    move v8, v15

    move/from16 v11, v18

    :goto_34
    move/from16 v9, v20

    move/from16 v14, v23

    goto/16 :goto_42

    .line 193
    :cond_57
    sget v1, Lcom/google/android/gms/internal/ads/zziac;->$r8$clinit:I

    .line 194
    invoke-static {v5}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 195
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zziac;->zze([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 196
    throw v16

    :cond_58
    move-object/from16 v4, p2

    move-object/from16 v9, p6

    move-object/from16 v28, v11

    move/from16 v11, v18

    move/from16 v10, v19

    move/from16 v1, v27

    move/from16 v18, v13

    const/16 v13, 0x32

    if-ne v3, v13, :cond_64

    const/4 v13, 0x2

    if-ne v8, v13, :cond_63

    .line 200
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzidf;->zzr(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v13, p1

    .line 201
    invoke-virtual {v12, v13, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 202
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzicx;->zza(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 203
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzicw;->zza()Lcom/google/android/gms/internal/ads/zzicw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzicw;->zzc()Lcom/google/android/gms/internal/ads/zzicw;

    move-result-object v5

    .line 204
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzicx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-virtual {v12, v13, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v3, v5

    .line 206
    :cond_59
    check-cast v2, Lcom/google/android/gms/internal/ads/zzicv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzicv;->zze()Lcom/google/android/gms/internal/ads/zzicu;

    move-result-object v7

    .line 207
    move-object v8, v3

    check-cast v8, Lcom/google/android/gms/internal/ads/zzicw;

    .line 208
    invoke-static {v4, v1, v9}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    iget v3, v9, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-ltz v3, :cond_62

    sub-int v5, p4, v2

    if-gt v3, v5, :cond_62

    add-int v14, v2, v3

    .line 322
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzicu;->zzb:Ljava/lang/Object;

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzicu;->zzd:Ljava/lang/Object;

    move-object v6, v5

    :goto_35
    if-ge v2, v14, :cond_5f

    move/from16 v27, v1

    add-int/lit8 v1, v2, 0x1

    .line 209
    aget-byte v2, v4, v2

    if-gez v2, :cond_5a

    .line 210
    invoke-static {v2, v4, v1, v9}, Lcom/google/android/gms/internal/ads/zziac;->zzb(I[BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v1

    iget v2, v9, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    :cond_5a
    move/from16 v29, v2

    move v2, v1

    move/from16 v1, v29

    move/from16 p3, v2

    ushr-int/lit8 v2, v1, 0x3

    move-object/from16 v18, v3

    and-int/lit8 v3, v1, 0x7

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5d

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5b

    move-object/from16 v2, v18

    move-object/from16 v18, v5

    move-object v5, v9

    move-object v9, v2

    move-object/from16 v4, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v19, v10

    move/from16 v10, v27

    goto/16 :goto_37

    .line 216
    :cond_5b
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzicu;->zzc:Lcom/google/android/gms/internal/ads/zzies;

    .line 211
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzies;->zzb()I

    move-result v2

    if-ne v3, v2, :cond_5c

    move-object v2, v5

    .line 212
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object v6, v9

    move/from16 v19, v10

    move-object/from16 v9, v18

    move/from16 v10, v27

    move-object/from16 v18, v2

    move/from16 v2, p3

    .line 213
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzidf;->zzT([BIILcom/google/android/gms/internal/ads/zzies;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    move-object v4, v6

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    move-object v3, v9

    move v1, v10

    move-object/from16 v5, v18

    move/from16 v10, v19

    move-object v9, v4

    move-object/from16 v4, p2

    goto :goto_35

    :cond_5c
    move-object v4, v9

    move/from16 v19, v10

    move-object/from16 v9, v18

    move/from16 v10, v27

    move-object/from16 v18, v5

    move/from16 v2, p3

    move/from16 v3, p4

    move-object v5, v4

    move-object/from16 v4, p2

    goto :goto_37

    :cond_5d
    move/from16 v2, p3

    move/from16 v19, v10

    move-object/from16 v9, v18

    move/from16 v10, v27

    move-object/from16 v18, v5

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzicu;->zza:Lcom/google/android/gms/internal/ads/zzies;

    .line 214
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzies;->zzb()I

    move-result v5

    if-ne v3, v5, :cond_5e

    const/4 v5, 0x0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object v9, v6

    move-object/from16 v6, p6

    .line 215
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzidf;->zzT([BIILcom/google/android/gms/internal/ads/zzies;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    move-object v4, v1

    move-object v5, v6

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    move-object v3, v1

    move-object v6, v9

    :goto_36
    move v1, v10

    move/from16 v10, v19

    move-object v9, v5

    move-object/from16 v5, v18

    goto/16 :goto_35

    :cond_5e
    move-object/from16 v4, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 216
    :goto_37
    invoke-static {v1, v4, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zziac;->zzp(I[BIILcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    move-object v3, v9

    goto :goto_36

    :cond_5f
    move-object v5, v9

    move/from16 v19, v10

    move v10, v1

    move-object v9, v3

    move/from16 v3, p4

    if-ne v2, v14, :cond_61

    .line 217
    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v14, v10, :cond_60

    move-object v1, v4

    move v4, v3

    move-object v3, v1

    move-object v6, v5

    move v7, v11

    move-object v1, v12

    move-object v2, v13

    move v5, v14

    move v8, v15

    move/from16 v15, v19

    move/from16 v9, v20

    move/from16 v14, v23

    goto/16 :goto_6

    :cond_60
    move/from16 v7, p5

    move-object v1, v4

    move-object v10, v5

    move v3, v14

    move v8, v15

    move/from16 v2, v19

    goto/16 :goto_34

    .line 215
    :cond_61
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    move-object/from16 v9, v28

    .line 323
    invoke-direct {v1, v9}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 324
    throw v1

    .line 208
    :cond_62
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 321
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 322
    throw v1

    :cond_63
    move-object/from16 v13, p1

    move-object v5, v9

    move/from16 v19, v10

    move-object/from16 v9, v28

    move v10, v1

    goto/16 :goto_16

    :goto_38
    move/from16 v7, p5

    move-object v1, v4

    move-object/from16 v28, v9

    move v3, v10

    move v8, v15

    move/from16 v2, v19

    move/from16 v9, v20

    move/from16 v14, v23

    move-object v10, v5

    goto/16 :goto_42

    :cond_64
    move-object/from16 v13, p1

    move/from16 v19, v10

    move-object/from16 v9, v28

    move v10, v1

    add-int/lit8 v1, v15, 0x2

    .line 218
    aget v1, v24, v1

    const v17, 0xfffff

    and-int v1, v1, v17

    move v14, v3

    int-to-long v3, v1

    packed-switch v14, :pswitch_data_2

    :cond_65
    move-object/from16 v1, p2

    move-object/from16 v28, v9

    move/from16 v5, v19

    move/from16 v19, v15

    move v15, v10

    move-object/from16 v10, p6

    goto/16 :goto_40

    :pswitch_1a
    const/4 v3, 0x3

    if-ne v8, v3, :cond_65

    and-int/lit8 v1, v19, -0x8

    or-int/lit8 v6, v1, 0x4

    .line 219
    invoke-direct {v0, v13, v11, v15}, Lcom/google/android/gms/internal/ads/zzidf;->zzv(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 220
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v4, v10

    .line 221
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zziac;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;[BIIILcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    move-object v5, v7

    .line 222
    invoke-direct {v0, v13, v11, v15, v3}, Lcom/google/android/gms/internal/ads/zzidf;->zzw(Ljava/lang/Object;IILjava/lang/Object;)V

    move/from16 v28, v10

    move-object v10, v5

    move/from16 v5, v19

    move/from16 v19, v15

    move/from16 v15, v28

    move-object/from16 v28, v9

    goto/16 :goto_41

    :pswitch_1b
    move-object/from16 v1, p2

    move-object/from16 v5, p6

    if-nez v8, :cond_66

    .line 223
    invoke-static {v1, v10, v5}, Lcom/google/android/gms/internal/ads/zziac;->zzc([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    move-object/from16 v28, v9

    iget-wide v8, v5, Lcom/google/android/gms/internal/ads/zziab;->zzb:J

    .line 224
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zziaq;->zzL(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v13, v6, v7, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 225
    invoke-virtual {v12, v13, v3, v4, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_39
    move/from16 v29, v10

    move-object v10, v5

    move/from16 v5, v19

    move/from16 v19, v15

    move/from16 v15, v29

    goto/16 :goto_41

    :cond_66
    move-object/from16 v28, v9

    :cond_67
    move/from16 v29, v10

    move-object v10, v5

    move/from16 v5, v19

    move/from16 v19, v15

    move/from16 v15, v29

    goto/16 :goto_40

    :pswitch_1c
    move-object/from16 v1, p2

    move-object/from16 v5, p6

    move-object/from16 v28, v9

    if-nez v8, :cond_67

    .line 226
    invoke-static {v1, v10, v5}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    iget v8, v5, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    .line 227
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zziaq;->zzK(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v13, v6, v7, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 228
    invoke-virtual {v12, v13, v3, v4, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_39

    :pswitch_1d
    move-object/from16 v1, p2

    move-object/from16 v5, p6

    move-object/from16 v28, v9

    if-nez v8, :cond_67

    .line 229
    invoke-static {v1, v10, v5}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    iget v8, v5, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    .line 230
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzidf;->zzs(I)Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v9

    if-eqz v9, :cond_68

    .line 231
    invoke-interface {v9, v8}, Lcom/google/android/gms/internal/ads/zzibx;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_69

    :cond_68
    move/from16 v9, v19

    goto :goto_3a

    .line 234
    :cond_69
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzidf;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzieg;

    move-result-object v3

    int-to-long v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move/from16 v9, v19

    invoke-virtual {v3, v9, v4}, Lcom/google/android/gms/internal/ads/zzieg;->zzk(ILjava/lang/Object;)V

    goto :goto_3b

    .line 232
    :goto_3a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v13, v6, v7, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 233
    invoke-virtual {v12, v13, v3, v4, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3b
    move/from16 v19, v15

    move v15, v10

    move-object v10, v5

    :goto_3c
    move v5, v9

    goto/16 :goto_41

    :pswitch_1e
    move-object/from16 v1, p2

    move-object/from16 v5, p6

    move-object/from16 v28, v9

    move/from16 v9, v19

    const/4 v14, 0x2

    if-ne v8, v14, :cond_6a

    .line 235
    invoke-static {v1, v10, v5}, Lcom/google/android/gms/internal/ads/zziac;->zzg([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zziab;->zzc:Ljava/lang/Object;

    .line 236
    invoke-virtual {v12, v13, v6, v7, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 237
    invoke-virtual {v12, v13, v3, v4, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3b

    :cond_6a
    move/from16 v19, v15

    move v15, v10

    move-object v10, v5

    :cond_6b
    move v5, v9

    goto/16 :goto_40

    :pswitch_1f
    move-object/from16 v1, p2

    move-object/from16 v5, p6

    move-object/from16 v28, v9

    move/from16 v9, v19

    const/4 v14, 0x2

    if-ne v8, v14, :cond_6c

    .line 238
    invoke-direct {v0, v13, v11, v15}, Lcom/google/android/gms/internal/ads/zzidf;->zzv(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 239
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v2

    move-object/from16 v3, p2

    move-object v6, v5

    move v4, v10

    move/from16 v5, p4

    .line 240
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zziac;->zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;[BIILcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    move-object v10, v6

    .line 241
    invoke-direct {v0, v13, v11, v15, v3}, Lcom/google/android/gms/internal/ads/zzidf;->zzw(Ljava/lang/Object;IILjava/lang/Object;)V

    move v5, v9

    move/from16 v19, v15

    move v15, v4

    goto/16 :goto_41

    :cond_6c
    move v4, v10

    move-object v10, v5

    move v5, v9

    move/from16 v19, v15

    move v15, v4

    goto/16 :goto_40

    :pswitch_20
    move-object/from16 v1, p2

    move-object/from16 v28, v9

    move/from16 v9, v19

    const/4 v14, 0x2

    move/from16 v19, v15

    move v15, v10

    move-object/from16 v10, p6

    if-ne v8, v14, :cond_6b

    .line 242
    invoke-static {v1, v15, v10}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v8

    iget v14, v10, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    if-nez v14, :cond_6d

    .line 243
    invoke-virtual {v12, v13, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3e

    :cond_6d
    add-int v5, v8, v14

    const/high16 v21, 0x20000000

    and-int v18, v18, v21

    if-eqz v18, :cond_6f

    .line 244
    invoke-static {v1, v8, v5}, Lcom/google/android/gms/internal/ads/zzier;->zzb([BII)Z

    move-result v18

    if-eqz v18, :cond_6e

    goto :goto_3d

    .line 5
    :cond_6e
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 325
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 326
    throw v1

    .line 244
    :cond_6f
    :goto_3d
    new-instance v2, Ljava/lang/String;

    move/from16 p3, v5

    .line 245
    sget-object v5, Lcom/google/android/gms/internal/ads/zzice;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v8, v14, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 246
    invoke-virtual {v12, v13, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v8, p3

    .line 247
    :goto_3e
    invoke-virtual {v12, v13, v3, v4, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v2, v8

    goto/16 :goto_3c

    :pswitch_21
    move-object/from16 v1, p2

    move-object/from16 v28, v9

    move/from16 v9, v19

    move/from16 v19, v15

    move v15, v10

    move-object/from16 v10, p6

    if-nez v8, :cond_6b

    .line 248
    invoke-static {v1, v15, v10}, Lcom/google/android/gms/internal/ads/zziac;->zzc([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    move v5, v9

    iget-wide v8, v10, Lcom/google/android/gms/internal/ads/zziab;->zzb:J

    cmp-long v8, v8, v21

    if-eqz v8, :cond_70

    const/16 v25, 0x1

    goto :goto_3f

    :cond_70
    const/16 v25, 0x0

    .line 249
    :goto_3f
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v12, v13, v6, v7, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 250
    invoke-virtual {v12, v13, v3, v4, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_41

    :pswitch_22
    move-object/from16 v1, p2

    move-object/from16 v28, v9

    move/from16 v5, v19

    const/4 v2, 0x5

    move/from16 v19, v15

    move v15, v10

    move-object/from16 v10, p6

    if-ne v8, v2, :cond_71

    add-int/lit8 v2, v15, 0x4

    .line 251
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/ads/zziac;->zzd([BI)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v13, v6, v7, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 252
    invoke-virtual {v12, v13, v3, v4, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_41

    :pswitch_23
    move-object/from16 v1, p2

    move-object/from16 v28, v9

    move/from16 v5, v19

    const/4 v2, 0x1

    move/from16 v19, v15

    move v15, v10

    move-object/from16 v10, p6

    if-ne v8, v2, :cond_71

    add-int/lit8 v2, v15, 0x8

    .line 253
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/ads/zziac;->zze([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v13, v6, v7, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 254
    invoke-virtual {v12, v13, v3, v4, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_41

    :pswitch_24
    move-object/from16 v1, p2

    move-object/from16 v28, v9

    move/from16 v5, v19

    move/from16 v19, v15

    move v15, v10

    move-object/from16 v10, p6

    if-nez v8, :cond_71

    .line 255
    invoke-static {v1, v15, v10}, Lcom/google/android/gms/internal/ads/zziac;->zza([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    iget v8, v10, Lcom/google/android/gms/internal/ads/zziab;->zza:I

    .line 256
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v13, v6, v7, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 257
    invoke-virtual {v12, v13, v3, v4, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_41

    :pswitch_25
    move-object/from16 v1, p2

    move-object/from16 v28, v9

    move/from16 v5, v19

    move/from16 v19, v15

    move v15, v10

    move-object/from16 v10, p6

    if-nez v8, :cond_71

    .line 258
    invoke-static {v1, v15, v10}, Lcom/google/android/gms/internal/ads/zziac;->zzc([BILcom/google/android/gms/internal/ads/zziab;)I

    move-result v2

    iget-wide v8, v10, Lcom/google/android/gms/internal/ads/zziab;->zzb:J

    .line 259
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v13, v6, v7, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 260
    invoke-virtual {v12, v13, v3, v4, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_41

    :pswitch_26
    move-object/from16 v1, p2

    move-object/from16 v28, v9

    move/from16 v5, v19

    const/4 v2, 0x5

    move/from16 v19, v15

    move v15, v10

    move-object/from16 v10, p6

    if-ne v8, v2, :cond_71

    add-int/lit8 v2, v15, 0x4

    .line 261
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/ads/zziac;->zzd([BI)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 262
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v12, v13, v6, v7, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 263
    invoke-virtual {v12, v13, v3, v4, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_41

    :pswitch_27
    move-object/from16 v1, p2

    move-object/from16 v28, v9

    move/from16 v5, v19

    const/4 v2, 0x1

    move/from16 v19, v15

    move v15, v10

    move-object/from16 v10, p6

    if-ne v8, v2, :cond_71

    add-int/lit8 v2, v15, 0x8

    .line 264
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/ads/zziac;->zze([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 265
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v12, v13, v6, v7, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 266
    invoke-virtual {v12, v13, v3, v4, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_41

    :cond_71
    :goto_40
    move v2, v15

    :goto_41
    if-eq v2, v15, :cond_72

    move/from16 v4, p4

    move-object v3, v1

    move v15, v5

    move-object v6, v10

    move v7, v11

    move-object v1, v12

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v14, v23

    const/4 v12, -0x1

    move v5, v2

    move-object v2, v13

    goto/16 :goto_0

    :cond_72
    move/from16 v7, p5

    move v3, v2

    move v2, v5

    move/from16 v8, v19

    goto/16 :goto_34

    :goto_42
    if-ne v2, v7, :cond_73

    if-eqz v7, :cond_73

    move/from16 v10, p4

    move v15, v2

    move v6, v3

    :goto_43
    const v1, 0xfffff

    goto/16 :goto_46

    .line 334
    :cond_73
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzidf;->zzh:Z

    if-eqz v4, :cond_74

    iget-object v4, v10, Lcom/google/android/gms/internal/ads/zziab;->zzd:Lcom/google/android/gms/internal/ads/zzibb;

    .line 267
    sget-object v5, Lcom/google/android/gms/internal/ads/zzibb;->zza:Lcom/google/android/gms/internal/ads/zzibb;

    .line 268
    sget v5, Lcom/google/android/gms/internal/ads/zziaa;->$r8$clinit:I

    sget-object v5, Lcom/google/android/gms/internal/ads/zzibb;->zza:Lcom/google/android/gms/internal/ads/zzibb;

    if-eq v4, v5, :cond_74

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzidf;->zzg:Lcom/google/android/gms/internal/ads/zzidc;

    .line 271
    sget v6, Lcom/google/android/gms/internal/ads/zziac;->$r8$clinit:I

    .line 272
    invoke-virtual {v4, v5, v11}, Lcom/google/android/gms/internal/ads/zzibb;->zzc(Lcom/google/android/gms/internal/ads/zzidc;I)Lcom/google/android/gms/internal/ads/zzibp;

    .line 273
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzidf;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzieg;

    move-result-object v5

    move v4, v2

    move-object v2, v1

    move v1, v4

    move/from16 v4, p4

    move-object v6, v10

    .line 274
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zziac;->zzo(I[BIILcom/google/android/gms/internal/ads/zzieg;Lcom/google/android/gms/internal/ads/zziab;)I

    move-result v3

    move/from16 v10, p4

    :goto_44
    move v5, v3

    goto :goto_45

    :cond_74
    move v1, v2

    .line 269
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzidf;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzieg;

    move-result-object v5

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 270
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zziac;->zzo(I[BIILcom/google/android/gms/internal/ads/zzieg;Lcom/google/android/gms/internal/ads/zziab;)I

    move-result v3

    move v10, v4

    goto :goto_44

    :goto_45
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v15, v1

    move v4, v10

    move v7, v11

    move-object v1, v12

    move-object v2, v13

    goto/16 :goto_6

    :cond_75
    move/from16 v7, p5

    move-object v12, v1

    move-object v13, v2

    move v10, v4

    move/from16 v20, v9

    move-object/from16 v28, v11

    move/from16 v23, v14

    move v6, v5

    goto :goto_43

    :goto_46
    if-eq v9, v1, :cond_76

    int-to-long v1, v9

    .line 327
    invoke-virtual {v12, v13, v1, v2, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_76
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzidf;->zzk:I

    move v8, v1

    move-object/from16 v3, v16

    :goto_47
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzidf;->zzl:I

    if-ge v8, v1, :cond_77

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzidf;->zzj:[I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzidf;->zzm:Lcom/google/android/gms/internal/ads/zzief;

    .line 328
    aget v2, v1, v8

    move-object/from16 v5, p1

    move-object v1, v13

    .line 329
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzief;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzieg;

    add-int/lit8 v8, v8, 0x1

    goto :goto_47

    :cond_77
    move-object v1, v13

    if-eqz v3, :cond_78

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzidf;->zzm:Lcom/google/android/gms/internal/ads/zzief;

    .line 330
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzief;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_78
    if-nez v7, :cond_7a

    if-ne v6, v10, :cond_79

    goto :goto_48

    :cond_79
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    move-object/from16 v9, v28

    .line 331
    invoke-direct {v1, v9}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 332
    throw v1

    :cond_7a
    move-object/from16 v9, v28

    if-gt v6, v10, :cond_7b

    if-ne v15, v7, :cond_7b

    :goto_48
    return v6

    :cond_7b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 333
    invoke-direct {v1, v9}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 334
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final zzj(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zziab;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzidf;->zzi(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/zziab;)I

    return-void
.end method

.method public final zzk(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzidf;->zzE(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzibr;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbq()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbb()V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzaY()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzc:[I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzA(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzC(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 11
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzidf;->zzb:Lsun/misc/Unsafe;

    .line 12
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 13
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/ads/zzicw;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzicw;->zzd()V

    .line 14
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 7
    :pswitch_1
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzicd;

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzicd;->zzb()V

    goto :goto_1

    .line 9
    :cond_2
    aget v2, v0, v1

    .line 10
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/ads/zzidf;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzidu;->zzk(Ljava/lang/Object;)V

    goto :goto_1

    .line 15
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzN(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/ads/zzidf;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzidu;->zzk(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzm:Lcom/google/android/gms/internal/ads/zzief;

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzief;->zzj(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzh:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzn:Lcom/google/android/gms/internal/ads/zzibc;

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzibc;->zza(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzl(Ljava/lang/Object;)Z
    .locals 15

    move-object/from16 v1, p1

    const/4 v6, 0x0

    const v7, 0xfffff

    move v2, v6

    move v8, v2

    move v0, v7

    .line 1
    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzk:I

    const/4 v9, 0x0

    const/4 v4, 0x1

    if-ge v8, v3, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzj:[I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzc:[I

    aget v3, v3, v8

    .line 2
    aget v10, v5, v3

    .line 3
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzidf;->zzA(I)I

    move-result v11

    add-int/lit8 v12, v3, 0x2

    .line 4
    aget v5, v5, v12

    and-int v12, v5, v7

    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v4, v5

    if-eq v12, v0, :cond_1

    if-eq v12, v7, :cond_0

    int-to-long v13, v12

    sget-object v0, Lcom/google/android/gms/internal/ads/zzidf;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v0, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    :cond_0
    move v4, v2

    move v0, v12

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const/high16 v2, 0x10000000

    and-int/2addr v2, v11

    if-eqz v2, :cond_3

    move v2, v3

    move v3, v0

    move-object v0, p0

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    return v6

    :cond_3
    move v2, v3

    move v3, v0

    :goto_2
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzidf;->zzC(I)I

    move-result v12

    const/16 v13, 0x9

    if-eq v12, v13, :cond_a

    const/16 v13, 0x11

    if-eq v12, v13, :cond_a

    const/16 v5, 0x1b

    if-eq v12, v5, :cond_8

    const/16 v5, 0x3c

    if-eq v12, v5, :cond_7

    const/16 v5, 0x44

    if-eq v12, v5, :cond_7

    const/16 v5, 0x31

    if-eq v12, v5, :cond_8

    const/16 v5, 0x32

    if-eq v12, v5, :cond_4

    goto/16 :goto_4

    :cond_4
    and-int v5, v11, v7

    int-to-long v10, v5

    .line 13
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 14
    check-cast v5, Lcom/google/android/gms/internal/ads/zzicw;

    .line 15
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    .line 16
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzr(I)Ljava/lang/Object;

    move-result-object v2

    .line 17
    check-cast v2, Lcom/google/android/gms/internal/ads/zzicv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzicv;->zze()Lcom/google/android/gms/internal/ads/zzicu;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzicu;->zzc:Lcom/google/android/gms/internal/ads/zzies;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzies;->zza()Lcom/google/android/gms/internal/ads/zziet;

    move-result-object v2

    sget-object v10, Lcom/google/android/gms/internal/ads/zziet;->zzi:Lcom/google/android/gms/internal/ads/zziet;

    if-ne v2, v10, :cond_b

    .line 19
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez v9, :cond_6

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidm;->zza()Lcom/google/android/gms/internal/ads/zzidm;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzidm;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v9

    .line 21
    :cond_6
    invoke-interface {v9, v5}, Lcom/google/android/gms/internal/ads/zzidu;->zzl(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    return v6

    .line 22
    :cond_7
    invoke-direct {p0, v1, v10, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 23
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v2

    invoke-static {v1, v11, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzy(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzidu;)Z

    move-result v2

    if-nez v2, :cond_b

    return v6

    :cond_8
    and-int v5, v11, v7

    int-to-long v9, v5

    .line 7
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zziem;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 8
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    .line 9
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v2

    move v9, v6

    .line 10
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_b

    .line 11
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 12
    invoke-interface {v2, v10}, Lcom/google/android/gms/internal/ads/zzidu;->zzl(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    return v6

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_a
    move-object v0, p0

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidf;->zzM(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 25
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzq(I)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v2

    invoke-static {v1, v11, v2}, Lcom/google/android/gms/internal/ads/zzidf;->zzy(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzidu;)Z

    move-result v2

    if-nez v2, :cond_b

    return v6

    :cond_b
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v0, v3

    move v2, v4

    goto/16 :goto_0

    :cond_c
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzidf;->zzh:Z

    if-nez v2, :cond_d

    return v4

    .line 26
    :cond_d
    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v9
.end method
