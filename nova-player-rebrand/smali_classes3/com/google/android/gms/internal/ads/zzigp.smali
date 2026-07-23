.class public final Lcom/google/android/gms/internal/ads/zzigp;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/ads/zzigp;

.field private static volatile zzj:Lcom/google/android/gms/internal/ads/zzidk;


# instance fields
.field private zza:I

.field private zzb:Lcom/google/android/gms/internal/ads/zzigo;

.field private zzc:Lcom/google/android/gms/internal/ads/zzicd;

.field private zzd:Lcom/google/android/gms/internal/ads/zzian;

.field private zze:Lcom/google/android/gms/internal/ads/zzian;

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/ads/zzian;

.field private zzh:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzigp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzigp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzigp;->zzi:Lcom/google/android/gms/internal/ads/zzigp;

    const-class v1, Lcom/google/android/gms/internal/ads/zzigp;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzigp;->zzh:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibr;->zzbM()Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzigp;->zzc:Lcom/google/android/gms/internal/ads/zzicd;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzigp;->zzd:Lcom/google/android/gms/internal/ads/zzian;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzigp;->zze:Lcom/google/android/gms/internal/ads/zzian;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzigp;->zzg:Lcom/google/android/gms/internal/ads/zzian;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/ads/zzigp;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzigp;->zzi:Lcom/google/android/gms/internal/ads/zzigp;

    return-object v0
.end method


# virtual methods
.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8
    throw v1

    .line 1
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzigp;->zzj:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzigp;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzigp;->zzj:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzigp;->zzi:Lcom/google/android/gms/internal/ads/zzigp;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzigp;->zzj:Lcom/google/android/gms/internal/ads/zzidk;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    monitor-exit p2

    return-object p1

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    .line 2
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzigp;->zzi:Lcom/google/android/gms/internal/ads/zzigp;

    return-object p1

    .line 5
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzigm;

    .line 6
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzigm;-><init>([B)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzigp;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzigp;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zza"

    aput-object p2, p1, v0

    const-string p2, "zzb"

    aput-object p2, p1, p3

    const-string p2, "zzc"

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/ads/zzigh;

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const-string p2, "zzd"

    const/4 p3, 0x4

    aput-object p2, p1, p3

    const-string p2, "zze"

    const/4 p3, 0x5

    aput-object p2, p1, p3

    const-string p2, "zzf"

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-string p2, "zzg"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/ads/zzigp;->zzi:Lcom/google/android/gms/internal/ads/zzigp;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003\u0006\u100a\u0004"

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbv(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    if-nez p2, :cond_2

    move p3, v0

    .line 4
    :cond_2
    iput-byte p3, p0, Lcom/google/android/gms/internal/ads/zzigp;->zzh:B

    return-object v1

    :pswitch_6
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzigp;->zzh:B

    .line 2
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
