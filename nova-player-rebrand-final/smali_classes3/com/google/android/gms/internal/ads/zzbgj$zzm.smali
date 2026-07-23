.class public final Lcom/google/android/gms/internal/ads/zzbgj$zzm;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field public static final zzd:I = 0x4

.field public static final zze:I = 0x5

.field public static final zzf:I = 0x6

.field public static final zzg:I = 0x7

.field public static final zzh:I = 0x8

.field private static final zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzm;

.field private static volatile zzw:Lcom/google/android/gms/internal/ads/zzidk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzidk;"
        }
    .end annotation
.end field


# instance fields
.field private zzi:I

.field private zzj:Ljava/lang/String;

.field private zzk:Lcom/google/android/gms/internal/ads/zzbgj$zzap;

.field private zzl:I

.field private zzm:Lcom/google/android/gms/internal/ads/zzbgj$zzar;

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzu:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzm;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbgj$zzm;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzj:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzu:I

    return-void
.end method

.method public static zzC()Lcom/google/android/gms/internal/ads/zzbgj$zzm;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzm;

    return-object v0
.end method

.method static synthetic zzab()Lcom/google/android/gms/internal/ads/zzbgj$zzm;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzm;

    return-object v0
.end method

.method private zzac(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzi:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzi:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzj:Ljava/lang/String;

    return-void
.end method

.method private zzak(Lcom/google/android/gms/internal/ads/zzbgj$zzar;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzm:Lcom/google/android/gms/internal/ads/zzbgj$zzar;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzi:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzi:I

    return-void
.end method


# virtual methods
.method final synthetic zzG(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzac(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzQ(Lcom/google/android/gms/internal/ads/zzbgj$zzar;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzak(Lcom/google/android/gms/internal/ads/zzbgj$zzar;)V

    return-void
.end method

.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzw:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbgj$zzm;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzw:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzm;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzw:Lcom/google/android/gms/internal/ads/zzidk;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzm;

    return-object p1

    .line 6
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzm$zza;

    .line 7
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzm$zza;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzm;-><init>()V

    return-object p1

    .line 5
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v5

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "zzi"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "zzj"

    aput-object v7, v6, p2

    const-string p2, "zzk"

    aput-object p2, v6, v3

    const-string p2, "zzl"

    aput-object p2, v6, v2

    const-string p2, "zzm"

    aput-object p2, v6, v1

    const-string p2, "zzn"

    aput-object p2, v6, v0

    const-string p2, "zzo"

    aput-object p2, v6, p3

    const/4 p2, 0x7

    aput-object p1, v6, p2

    const-string p1, "zzp"

    const/16 p2, 0x8

    aput-object p1, v6, p2

    const/16 p1, 0x9

    aput-object v4, v6, p1

    const-string p1, "zzu"

    const/16 p2, 0xa

    aput-object p1, v6, p2

    const/16 p1, 0xb

    aput-object v5, v6, p1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzm;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzm;

    const-string p2, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1009\u0001\u0003\u1004\u0002\u0004\u1009\u0003\u0005\u1004\u0004\u0006\u180c\u0005\u0007\u180c\u0006\u0008\u180c\u0007"

    .line 6
    invoke-static {p1, p2, v6}, Lcom/google/android/gms/internal/ads/zzibr;->zzbv(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
