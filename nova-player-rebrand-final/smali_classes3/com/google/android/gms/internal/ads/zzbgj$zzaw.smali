.class public final Lcom/google/android/gms/internal/ads/zzbgj$zzaw;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# static fields
.field public static final zza:I = 0x1

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzbgj$zzaw;

.field private static volatile zze:Lcom/google/android/gms/internal/ads/zzidk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzidk;"
        }
    .end annotation
.end field


# instance fields
.field private zzb:I

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaw;->zzd:Lcom/google/android/gms/internal/ads/zzbgj$zzaw;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbgj$zzaw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    return-void
.end method

.method static synthetic zzv()Lcom/google/android/gms/internal/ads/zzbgj$zzaw;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaw;->zzd:Lcom/google/android/gms/internal/ads/zzbgj$zzaw;

    return-object v0
.end method


# virtual methods
.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    if-eq p1, p3, :cond_5

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaw;->zze:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbgj$zzaw;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaw;->zze:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbgj$zzaw;->zzd:Lcom/google/android/gms/internal/ads/zzbgj$zzaw;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaw;->zze:Lcom/google/android/gms/internal/ads/zzidk;

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
    throw p3

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaw;->zzd:Lcom/google/android/gms/internal/ads/zzbgj$zzaw;

    return-object p1

    .line 6
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaw$zza;

    .line 7
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbgj$zzaw$zza;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaw;-><init>()V

    return-object p1

    .line 5
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzaw$zzb;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object p1

    new-array p3, p3, [Ljava/lang/Object;

    const-string v1, "zzb"

    const/4 v2, 0x0

    aput-object v1, p3, v2

    const-string v1, "zzc"

    aput-object v1, p3, p2

    aput-object p1, p3, v0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaw;->zzd:Lcom/google/android/gms/internal/ads/zzbgj$zzaw;

    const-string p2, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u180c\u0000"

    .line 6
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzibr;->zzbv(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
