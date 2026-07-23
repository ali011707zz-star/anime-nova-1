.class public final Lcom/google/android/gms/internal/ads/zzhok;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhok;

.field private static volatile zzc:Lcom/google/android/gms/internal/ads/zzidk;


# instance fields
.field private zza:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhok;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhok;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhok;->zzb:Lcom/google/android/gms/internal/ads/zzhok;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhok;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzhoj;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhok;->zzb:Lcom/google/android/gms/internal/ads/zzhok;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbn()Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhoj;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzhok;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhok;->zzb:Lcom/google/android/gms/internal/ads/zzhok;

    return-object v0
.end method

.method static synthetic zze()Lcom/google/android/gms/internal/ads/zzhok;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhok;->zzb:Lcom/google/android/gms/internal/ads/zzhok;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhok;->zza:I

    return v0
.end method

.method final synthetic zzd(I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhok;->zza:I

    return-void
.end method

.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x2

    if-eq p1, p3, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhok;->zzc:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzhok;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhok;->zzc:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzhok;->zzb:Lcom/google/android/gms/internal/ads/zzhok;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzhok;->zzc:Lcom/google/android/gms/internal/ads/zzidk;

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
    throw p3

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhok;->zzb:Lcom/google/android/gms/internal/ads/zzhok;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhoj;

    .line 6
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhoj;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhok;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhok;-><init>()V

    return-object p1

    .line 2
    :cond_6
    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "zza"

    const/4 p3, 0x0

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/ads/zzhok;->zzb:Lcom/google/android/gms/internal/ads/zzhok;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b"

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
