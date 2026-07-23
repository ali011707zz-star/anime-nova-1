.class public final Lcom/google/android/gms/internal/ads/zzbgj$zza;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# static fields
.field private static final zzB:Lcom/google/android/gms/internal/ads/zzbgj$zza;

.field private static volatile zzC:Lcom/google/android/gms/internal/ads/zzidk; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzidk;"
        }
    .end annotation
.end field

.field public static final zza:I = 0x7

.field public static final zzb:I = 0x8

.field public static final zzc:I = 0x9

.field public static final zzd:I = 0xa

.field public static final zze:I = 0xb

.field public static final zzf:I = 0xc

.field public static final zzg:I = 0xd

.field public static final zzh:I = 0xe

.field public static final zzi:I = 0xf

.field public static final zzj:I = 0x10

.field public static final zzk:I = 0x11


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzicd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzicd;"
        }
    .end annotation
.end field

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:Lcom/google/android/gms/internal/ads/zzbgj$zzg;

.field private zzp:Lcom/google/android/gms/internal/ads/zzbgj$zzi;

.field private zzu:Lcom/google/android/gms/internal/ads/zzicd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzicd;"
        }
    .end annotation
.end field

.field private zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzk;

.field private zzw:Lcom/google/android/gms/internal/ads/zzbgj$zzah;

.field private zzx:Lcom/google/android/gms/internal/ads/zzbgj$zzac;

.field private zzy:Lcom/google/android/gms/internal/ads/zzbgj$zzx;

.field private zzz:Lcom/google/android/gms/internal/ads/zzbgj$zzz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zza;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbgj$zza;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzn:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibr;->zzbM()Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzu:Lcom/google/android/gms/internal/ads/zzicd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibr;->zzbM()Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzA:Lcom/google/android/gms/internal/ads/zzicd;

    return-void
.end method

.method public static zzD()Lcom/google/android/gms/internal/ads/zzbgj$zza;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zza;

    return-object v0
.end method

.method static synthetic zzaD()Lcom/google/android/gms/internal/ads/zzbgj$zza;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zza;

    return-object v0
.end method

.method private zzaE(Lcom/google/android/gms/internal/ads/zzbgj$zza$zza;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zza$zza;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzm:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzl:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzl:I

    return-void
.end method

.method private zzaL(Lcom/google/android/gms/internal/ads/zzbgj$zzi;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzp:Lcom/google/android/gms/internal/ads/zzbgj$zzi;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzl:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzl:I

    return-void
.end method


# virtual methods
.method final synthetic zzF(Lcom/google/android/gms/internal/ads/zzbgj$zza$zza;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzaE(Lcom/google/android/gms/internal/ads/zzbgj$zza$zza;)V

    return-void
.end method

.method final synthetic zzQ(Lcom/google/android/gms/internal/ads/zzbgj$zzi;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzaL(Lcom/google/android/gms/internal/ads/zzbgj$zzi;)V

    return-void
.end method

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzC:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbgj$zza;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzC:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzC:Lcom/google/android/gms/internal/ads/zzidk;

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

    .line 10
    :cond_2
    throw p2

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zza;

    return-object p1

    .line 7
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zza$zzb;

    .line 8
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zza$zzb;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zza;

    .line 9
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zza;-><init>()V

    return-object p1

    .line 5
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zza$zza;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v4

    const/16 v5, 0x10

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

    const-class p1, Lcom/google/android/gms/internal/ads/zzbgj$zzd;

    const/16 p2, 0x8

    aput-object p1, v5, p2

    const-string p1, "zzv"

    const/16 p2, 0x9

    aput-object p1, v5, p2

    const-string p1, "zzw"

    const/16 p2, 0xa

    aput-object p1, v5, p2

    const-string p1, "zzx"

    const/16 p2, 0xb

    aput-object p1, v5, p2

    const-string p1, "zzy"

    const/16 p2, 0xc

    aput-object p1, v5, p2

    const-string p1, "zzz"

    const/16 p2, 0xd

    aput-object p1, v5, p2

    const-string p1, "zzA"

    const/16 p2, 0xe

    aput-object p1, v5, p2

    const-class p1, Lcom/google/android/gms/internal/ads/zzbgj$zzat;

    const/16 p2, 0xf

    aput-object p1, v5, p2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbgj$zza;

    const-string p2, "\u0004\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007\u180c\u0000\u0008\u180c\u0001\t\u1009\u0002\n\u1009\u0003\u000b\u001b\u000c\u1009\u0004\r\u1009\u0005\u000e\u1009\u0006\u000f\u1009\u0007\u0010\u1009\u0008\u0011\u001b"

    .line 7
    invoke-static {p1, p2, v5}, Lcom/google/android/gms/internal/ads/zzibr;->zzbv(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public zzp()Lcom/google/android/gms/internal/ads/zzbgj$zzi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zza;->zzp:Lcom/google/android/gms/internal/ads/zzbgj$zzi;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzi;->zzD()Lcom/google/android/gms/internal/ads/zzbgj$zzi;

    move-result-object v0

    :cond_0
    return-object v0
.end method
