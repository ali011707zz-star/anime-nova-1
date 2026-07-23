.class public final Lcom/google/android/gms/internal/ads/zzavk;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# static fields
.field private static final zzn:Lcom/google/android/gms/internal/ads/zzavk;

.field private static volatile zzo:Lcom/google/android/gms/internal/ads/zzidk;


# instance fields
.field private zza:I

.field private zzb:Lcom/google/android/gms/internal/ads/zzicd;

.field private zzc:J

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:J

.field private zzm:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzavk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzavk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavk;->zzn:Lcom/google/android/gms/internal/ads/zzavk;

    const-class v1, Lcom/google/android/gms/internal/ads/zzavk;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibr;->zzbM()Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzb:Lcom/google/android/gms/internal/ads/zzicd;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzk:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzavj;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavk;->zzn:Lcom/google/android/gms/internal/ads/zzavk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbn()Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzavj;

    return-object v0
.end method

.method static synthetic zzo()Lcom/google/android/gms/internal/ads/zzavk;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavk;->zzn:Lcom/google/android/gms/internal/ads/zzavk;

    return-object v0
.end method


# virtual methods
.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzawc;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzb:Lcom/google/android/gms/internal/ads/zzicd;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzicd;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbN(Lcom/google/android/gms/internal/ads/zzicd;)Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzb:Lcom/google/android/gms/internal/ads/zzicd;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzb:Lcom/google/android/gms/internal/ads/zzicd;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final synthetic zzc()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibr;->zzbM()Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzb:Lcom/google/android/gms/internal/ads/zzicd;

    return-void
.end method

.method final synthetic zzd(J)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzc:J

    return-void
.end method

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzavk;->zzo:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzavk;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzavk;->zzo:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzavk;->zzn:Lcom/google/android/gms/internal/ads/zzavk;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzavk;->zzo:Lcom/google/android/gms/internal/ads/zzidk;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzavk;->zzn:Lcom/google/android/gms/internal/ads/zzavk;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavj;

    .line 6
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzavj;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavk;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzavk;-><init>()V

    return-object p1

    :cond_6
    const/16 p1, 0xf

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "zza"

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const-string v4, "zzb"

    aput-object v4, p1, p2

    const-class p2, Lcom/google/android/gms/internal/ads/zzawc;

    aput-object p2, p1, v3

    const-string p2, "zzc"

    aput-object p2, p1, v2

    const-string p2, "zzd"

    aput-object p2, p1, v1

    const-string p2, "zze"

    aput-object p2, p1, v0

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const-string p2, "zzg"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/ads/zzawa;->zza:Lcom/google/android/gms/internal/ads/zzibx;

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "zzh"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-string p2, "zzi"

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string p2, "zzj"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const-string p2, "zzk"

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-string p2, "zzl"

    const/16 p3, 0xd

    aput-object p2, p1, p3

    const-string p2, "zzm"

    const/16 p3, 0xe

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/ads/zzavk;->zzn:Lcom/google/android/gms/internal/ads/zzavk;

    const-string p3, "\u0004\u000c\u0000\u0001\u0008?\u000c\u0000\u0001\u0000\u0008\u001b\u0015\u1002\u0000\u0016\u1008\u0001\u0017\u1008\u0002\u0018\u1008\u0003\u0019\u180c\u0004(\u1008\u0005)\u1002\u0006<\u1008\u0007=\u1008\u0008>\u1002\t?\u1002\n"

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

.method final synthetic zze(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzd:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzg(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->zze:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzh(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzf:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzi(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzh:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzj(J)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzi:J

    return-void
.end method

.method final synthetic zzk(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzj:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzl(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzk:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzm(J)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzl:J

    return-void
.end method

.method final synthetic zzn(J)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzm:J

    return-void
.end method

.method final synthetic zzp(I)V
    .locals 0

    .line 0
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:I

    return-void
.end method
