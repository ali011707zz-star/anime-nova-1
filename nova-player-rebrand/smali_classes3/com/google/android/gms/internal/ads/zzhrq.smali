.class public final Lcom/google/android/gms/internal/ads/zzhrq;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/ads/zzhrq;

.field private static volatile zzg:Lcom/google/android/gms/internal/ads/zzidk;


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:Lcom/google/android/gms/internal/ads/zzhrm;

.field private zzd:Lcom/google/android/gms/internal/ads/zzian;

.field private zze:Lcom/google/android/gms/internal/ads/zzian;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhrq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhrq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhrq;->zzf:Lcom/google/android/gms/internal/ads/zzhrq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhrq;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zzd:Lcom/google/android/gms/internal/ads/zzian;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zze:Lcom/google/android/gms/internal/ads/zzian;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzhrq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrq;->zzf:Lcom/google/android/gms/internal/ads/zzhrq;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbT(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhrq;

    return-object p0
.end method

.method public static zzg()Lcom/google/android/gms/internal/ads/zzhrp;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrq;->zzf:Lcom/google/android/gms/internal/ads/zzhrq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbn()Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhrp;

    return-object v0
.end method

.method public static zzh()Lcom/google/android/gms/internal/ads/zzhrq;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrq;->zzf:Lcom/google/android/gms/internal/ads/zzhrq;

    return-object v0
.end method

.method public static zzi()Lcom/google/android/gms/internal/ads/zzidk;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrq;->zzf:Lcom/google/android/gms/internal/ads/zzhrq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbd()Lcom/google/android/gms/internal/ads/zzidk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzn()Lcom/google/android/gms/internal/ads/zzhrq;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrq;->zzf:Lcom/google/android/gms/internal/ads/zzhrq;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zzb:I

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzhrm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zzc:Lcom/google/android/gms/internal/ads/zzhrm;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhrm;->zze()Lcom/google/android/gms/internal/ads/zzhrm;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzian;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zzd:Lcom/google/android/gms/internal/ads/zzian;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzian;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zze:Lcom/google/android/gms/internal/ads/zzian;

    return-object v0
.end method

.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    const/4 p2, 0x0

    if-eq p1, v0, :cond_4

    if-eq p1, p3, :cond_3

    const/4 p3, 0x6

    if-ne p1, p3, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhrq;->zzg:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzhrq;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhrq;->zzg:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzhrq;->zzf:Lcom/google/android/gms/internal/ads/zzhrq;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzhrq;->zzg:Lcom/google/android/gms/internal/ads/zzidk;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhrq;->zzf:Lcom/google/android/gms/internal/ads/zzhrq;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhrp;

    .line 6
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhrp;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhrq;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhrq;-><init>()V

    return-object p1

    .line 2
    :cond_6
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zza"

    const/4 v3, 0x0

    aput-object p3, p1, v3

    const-string p3, "zzb"

    aput-object p3, p1, p2

    const-string p2, "zzc"

    aput-object p2, p1, v2

    const-string p2, "zzd"

    aput-object p2, p1, v1

    const-string p2, "zze"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzhrq;->zzf:Lcom/google/android/gms/internal/ads/zzhrq;

    const-string p3, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\u1009\u0000\u0003\n\u0004\n"

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

.method final synthetic zzj(I)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zzb:I

    return-void
.end method

.method final synthetic zzk(Lcom/google/android/gms/internal/ads/zzhrm;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zzc:Lcom/google/android/gms/internal/ads/zzhrm;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zza:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zza:I

    return-void
.end method

.method final synthetic zzl(Lcom/google/android/gms/internal/ads/zzian;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zzd:Lcom/google/android/gms/internal/ads/zzian;

    return-void
.end method

.method final synthetic zzm(Lcom/google/android/gms/internal/ads/zzian;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zze:Lcom/google/android/gms/internal/ads/zzian;

    return-void
.end method
