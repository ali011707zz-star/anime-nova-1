.class public final Lcom/google/android/gms/internal/ads/zzbgj$zzah;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# static fields
.field private static final zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

.field private static volatile zzC:Lcom/google/android/gms/internal/ads/zzidk; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzidk;"
        }
    .end annotation
.end field

.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field public static final zzd:I = 0x4

.field public static final zze:I = 0x5

.field public static final zzf:I = 0x6

.field public static final zzg:I = 0x7

.field public static final zzh:I = 0x8

.field public static final zzi:I = 0x9

.field public static final zzj:I = 0xa

.field public static final zzk:I = 0xb


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzbgj$zzai;

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzu:I

.field private zzv:I

.field private zzw:I

.field private zzx:I

.field private zzy:I

.field private zzz:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzm:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzn:I

    return-void
.end method

.method static synthetic zzaj()Lcom/google/android/gms/internal/ads/zzbgj$zzah;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    return-object v0
.end method


# virtual methods
.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x6

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    const/4 p2, 0x0

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    if-ne p1, p3, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzC:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzC:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzC:Lcom/google/android/gms/internal/ads/zzidk;

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

    .line 8
    :cond_2
    throw p2

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    return-object p1

    .line 6
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzah$zza;

    .line 7
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzah$zza;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzah;-><init>()V

    return-object p1

    .line 5
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v4

    const/16 v5, 0xe

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "zzl"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "zzm"

    aput-object v6, v5, p2

    aput-object p1, v5, v3

    const-string p1, "zzn"

    aput-object p1, v5, v2

    aput-object v4, v5, v1

    const-string p1, "zzo"

    aput-object p1, v5, v0

    const-string p1, "zzp"

    aput-object p1, v5, p3

    const-string p1, "zzu"

    const/4 p2, 0x7

    aput-object p1, v5, p2

    const-string p1, "zzv"

    const/16 p2, 0x8

    aput-object p1, v5, p2

    const-string p1, "zzw"

    const/16 p2, 0x9

    aput-object p1, v5, p2

    const-string p1, "zzx"

    const/16 p2, 0xa

    aput-object p1, v5, p2

    const-string p1, "zzy"

    const/16 p2, 0xb

    aput-object p1, v5, p2

    const-string p1, "zzz"

    const/16 p2, 0xc

    aput-object p1, v5, p2

    const-string p1, "zzA"

    const/16 p2, 0xd

    aput-object p1, v5, p2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzah;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

    const-string p2, "\u0004\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u1004\u0002\u0004\u1004\u0003\u0005\u1004\u0004\u0006\u1004\u0005\u0007\u1004\u0006\u0008\u1004\u0007\t\u1004\u0008\n\u1004\t\u000b\u1009\n"

    .line 6
    invoke-static {p1, p2, v5}, Lcom/google/android/gms/internal/ads/zzibr;->zzbv(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
