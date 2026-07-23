.class public final Lcom/google/android/gms/internal/ads/zzbgj$zzat;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# static fields
.field private static final zzL:Lcom/google/android/gms/internal/ads/zzbgj$zzat;

.field private static volatile zzM:Lcom/google/android/gms/internal/ads/zzidk; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzidk;"
        }
    .end annotation
.end field

.field public static final zza:I = 0x5

.field public static final zzb:I = 0x6

.field public static final zzc:I = 0x7

.field public static final zzd:I = 0x8

.field public static final zze:I = 0x9

.field public static final zzf:I = 0xa

.field public static final zzg:I = 0xb

.field public static final zzh:I = 0xc

.field public static final zzi:I = 0xd

.field public static final zzj:I = 0xe

.field public static final zzk:I = 0xf

.field public static final zzl:I = 0x10

.field public static final zzm:I = 0x11

.field public static final zzn:I = 0x12

.field public static final zzo:I = 0x13

.field public static final zzp:I = 0x14


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzbgj$zzbc;

.field private zzB:Lcom/google/android/gms/internal/ads/zzbgj$zzay;

.field private zzC:I

.field private zzD:I

.field private zzE:Lcom/google/android/gms/internal/ads/zzbgj$zzap;

.field private zzF:I

.field private zzG:I

.field private zzH:I

.field private zzI:I

.field private zzJ:I

.field private zzK:J

.field private zzu:I

.field private zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzba;

.field private zzw:Lcom/google/android/gms/internal/ads/zzbgj$zzbe;

.field private zzx:Lcom/google/android/gms/internal/ads/zzbgj$zzbg;

.field private zzy:Lcom/google/android/gms/internal/ads/zzbgj$zzbj;

.field private zzz:Lcom/google/android/gms/internal/ads/zzbgj$zzau;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzat;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzat;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzat;->zzL:Lcom/google/android/gms/internal/ads/zzbgj$zzat;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbgj$zzat;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    return-void
.end method

.method static synthetic zzaL()Lcom/google/android/gms/internal/ads/zzbgj$zzat;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzat;->zzL:Lcom/google/android/gms/internal/ads/zzbgj$zzat;

    return-object v0
.end method


# virtual methods
.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzat;->zzM:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbgj$zzat;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzat;->zzM:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbgj$zzat;->zzL:Lcom/google/android/gms/internal/ads/zzbgj$zzat;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzat;->zzM:Lcom/google/android/gms/internal/ads/zzidk;

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

    .line 7
    :cond_2
    throw p2

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzat;->zzL:Lcom/google/android/gms/internal/ads/zzbgj$zzat;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzat$zza;

    .line 6
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzat$zza;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzat;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzat;-><init>()V

    return-object p1

    :cond_6
    const/16 p1, 0x11

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "zzu"

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const-string v4, "zzv"

    aput-object v4, p1, p2

    const-string p2, "zzw"

    aput-object p2, p1, v3

    const-string p2, "zzx"

    aput-object p2, p1, v2

    const-string p2, "zzy"

    aput-object p2, p1, v1

    const-string p2, "zzz"

    aput-object p2, p1, v0

    const-string p2, "zzA"

    aput-object p2, p1, p3

    const-string p2, "zzB"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "zzC"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "zzD"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-string p2, "zzE"

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string p2, "zzF"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const-string p2, "zzG"

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-string p2, "zzH"

    const/16 p3, 0xd

    aput-object p2, p1, p3

    const-string p2, "zzI"

    const/16 p3, 0xe

    aput-object p2, p1, p3

    const-string p2, "zzJ"

    const/16 p3, 0xf

    aput-object p2, p1, p3

    const-string p2, "zzK"

    const/16 p3, 0x10

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbgj$zzat;->zzL:Lcom/google/android/gms/internal/ads/zzbgj$zzat;

    const-string p3, "\u0004\u0010\u0000\u0001\u0005\u0014\u0010\u0000\u0000\u0000\u0005\u1009\u0000\u0006\u1009\u0001\u0007\u1009\u0002\u0008\u1009\u0003\t\u1009\u0004\n\u1009\u0005\u000b\u1009\u0006\u000c\u1004\u0007\r\u1004\u0008\u000e\u1009\t\u000f\u1004\n\u0010\u1004\u000b\u0011\u1004\u000c\u0012\u1004\r\u0013\u1004\u000e\u0014\u1003\u000f"

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbv(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
