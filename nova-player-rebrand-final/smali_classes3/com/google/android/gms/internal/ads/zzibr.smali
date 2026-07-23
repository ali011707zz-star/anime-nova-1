.class public abstract Lcom/google/android/gms/internal/ads/zzibr;
.super Lcom/google/android/gms/internal/ads/zzhzw;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field private static final zza:I = -0x80000000

.field private static final zzb:I = 0x7fffffff

.field private static zzd:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzibr;",
            ">;"
        }
    .end annotation
.end field

.field static final zzr:I = 0x7fffffff

.field static final zzs:I


# instance fields
.field private zzc:I

.field protected zzt:Lcom/google/android/gms/internal/ads/zzieg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzibr;->zzd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhzw;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzibr;->zzc:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzieg;->zza()Lcom/google/android/gms/internal/ads/zzieg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    return-void
.end method

.method static varargs zzbB(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 5
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 6
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 7
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 4
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 8
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zzbC()Lcom/google/android/gms/internal/ads/zzibz;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibs;->zzd()Lcom/google/android/gms/internal/ads/zzibs;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbD(Lcom/google/android/gms/internal/ads/zzibz;)Lcom/google/android/gms/internal/ads/zzibz;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzibz;->zze(I)Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object p0

    return-object p0
.end method

.method protected static zzbE()Lcom/google/android/gms/internal/ads/zzicc;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzicq;->zzg()Lcom/google/android/gms/internal/ads/zzicq;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbF(Lcom/google/android/gms/internal/ads/zzicc;)Lcom/google/android/gms/internal/ads/zzicc;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzicc;->zzf(I)Lcom/google/android/gms/internal/ads/zzicc;

    move-result-object p0

    return-object p0
.end method

.method protected static zzbM()Lcom/google/android/gms/internal/ads/zzicd;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidn;->zzd()Lcom/google/android/gms/internal/ads/zzidn;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbN(Lcom/google/android/gms/internal/ads/zzicd;)Lcom/google/android/gms/internal/ads/zzicd;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzicd;->zzh(I)Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object p0

    return-object p0
.end method

.method static zzbO(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zziaq;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbg()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidm;->zza()Lcom/google/android/gms/internal/ads/zzidm;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzidm;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zziar;->zza(Lcom/google/android/gms/internal/ads/zziaq;)Lcom/google/android/gms/internal/ads/zziar;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzidu;->zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidp;Lcom/google/android/gms/internal/ads/zzibb;)V

    .line 5
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzidu;->zzk(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zziee; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzicg;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzicg;

    throw p0

    .line 8
    :cond_0
    throw p0

    :catch_1
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzicg;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzicg;

    throw p0

    .line 13
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 11
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2
    move-exception p0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziee;->zza()Lcom/google/android/gms/internal/ads/zzicg;

    move-result-object p0

    throw p0

    :catch_3
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzicg;->zzb()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 14
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/io/IOException;)V

    .line 13
    throw p1

    :cond_2
    throw p0
.end method

.method protected static zzbS(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzibr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzibb;->zza:Lcom/google/android/gms/internal/ads/zzibb;

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zziaa;->$r8$clinit:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzibb;->zza:Lcom/google/android/gms/internal/ads/zzibb;

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbT(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzi(Lcom/google/android/gms/internal/ads/zzibr;)Lcom/google/android/gms/internal/ads/zzibr;

    return-object p0
.end method

.method protected static zzbT(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzibr;->zzj(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzi(Lcom/google/android/gms/internal/ads/zzibr;)Lcom/google/android/gms/internal/ads/zzibr;

    return-object p0
.end method

.method protected static zzbU(Lcom/google/android/gms/internal/ads/zzibr;[B)Lcom/google/android/gms/internal/ads/zzibr;
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzibb;->zza:Lcom/google/android/gms/internal/ads/zzibb;

    .line 3
    sget v1, Lcom/google/android/gms/internal/ads/zziaa;->$r8$clinit:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzibb;->zza:Lcom/google/android/gms/internal/ads/zzibb;

    const/4 v2, 0x0

    .line 4
    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzibr;->zzh(Lcom/google/android/gms/internal/ads/zzibr;[BIILcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzi(Lcom/google/android/gms/internal/ads/zzibr;)Lcom/google/android/gms/internal/ads/zzibr;

    return-object p0
.end method

.method protected static zzbV(Lcom/google/android/gms/internal/ads/zzibr;[BLcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;
    .locals 2

    const/4 v0, 0x0

    .line 1
    array-length v1, p1

    .line 2
    invoke-static {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzibr;->zzh(Lcom/google/android/gms/internal/ads/zzibr;[BIILcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzi(Lcom/google/android/gms/internal/ads/zzibr;)Lcom/google/android/gms/internal/ads/zzibr;

    return-object p0
.end method

.method protected static zzbW(Lcom/google/android/gms/internal/ads/zzibr;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzibr;
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzF(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/ads/zziaq;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzibb;->zza:Lcom/google/android/gms/internal/ads/zzibb;

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zziaa;->$r8$clinit:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzibb;->zza:Lcom/google/android/gms/internal/ads/zzibb;

    .line 4
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbO(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zziaq;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzi(Lcom/google/android/gms/internal/ads/zzibr;)Lcom/google/android/gms/internal/ads/zzibr;

    return-object p0
.end method

.method protected static zzbX(Lcom/google/android/gms/internal/ads/zzibr;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzF(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/ads/zziaq;

    move-result-object p1

    .line 2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzibr;->zzbO(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zziaq;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzi(Lcom/google/android/gms/internal/ads/zzibr;)Lcom/google/android/gms/internal/ads/zzibr;

    return-object p0
.end method

.method static zzbt(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzibr;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzibr;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibr;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzibr;->zzd:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibr;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    .line 3
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zziem;->zzc(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbe()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzibr;->zzd:Ljava/util/Map;

    .line 7
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 6
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    return-object v0
.end method

.method protected static zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzaY()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzibr;->zzd:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static zzbv(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzido;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzido;-><init>(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic zzcd(Lcom/google/android/gms/internal/ads/zzibr;Z)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzg(Lcom/google/android/gms/internal/ads/zzibr;Z)Z

    move-result p0

    return p0
.end method

.method private zzd(Lcom/google/android/gms/internal/ads/zzidu;)I
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidm;->zza()Lcom/google/android/gms/internal/ads/zzidm;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzidm;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object p1

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzidu;->zze(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzidu;->zze(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private static final zzg(Lcom/google/android/gms/internal/ads/zzibr;Z)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzibq;->zza:Lcom/google/android/gms/internal/ads/zzibq;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzibr;->zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidm;->zza()Lcom/google/android/gms/internal/ads/zzidm;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzidm;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v0

    .line 2
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzidu;->zzl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    if-eq v2, v0, :cond_2

    move-object p1, v1

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzibq;->zzb:Lcom/google/android/gms/internal/ads/zzibq;

    .line 4
    invoke-virtual {p0, v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzibr;->zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzibr;[BIILcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;
    .locals 6

    if-nez p3, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbg()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidm;->zza()Lcom/google/android/gms/internal/ads/zzidm;

    move-result-object p0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzidm;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v0

    add-int v4, p2, p3

    new-instance v5, Lcom/google/android/gms/internal/ads/zziab;

    .line 4
    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/ads/zziab;-><init>(Lcom/google/android/gms/internal/ads/zzibb;)V

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzidu;->zzj(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zziab;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzidu;->zzk(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zziee; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 9
    :catch_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzicg;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 7
    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzicg;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzicg;

    throw p0

    .line 11
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 10
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2
    move-exception v0

    move-object p0, v0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziee;->zza()Lcom/google/android/gms/internal/ads/zzicg;

    move-result-object p0

    throw p0

    :catch_3
    move-exception v0

    move-object p0, v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzicg;->zzb()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 13
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/io/IOException;)V

    .line 12
    throw p1

    :cond_2
    throw p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzibr;)Lcom/google/android/gms/internal/ads/zzibr;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbi()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaU()Lcom/google/android/gms/internal/ads/zziee;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziee;->zza()Lcom/google/android/gms/internal/ads/zzicg;

    move-result-object p0

    .line 4
    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzian;->zzm()Lcom/google/android/gms/internal/ads/zziaq;

    move-result-object p1

    .line 2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzibr;->zzbO(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zziaq;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zziaq;->zzb(I)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidm;->zza()Lcom/google/android/gms/internal/ads/zzidm;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzidm;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzibr;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzidu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzaX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbh()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbh()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzba(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzaZ()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzide;->zza(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzaQ()I
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzibr;->zzc:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method zzaR(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzibr;->zzc:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzibr;->zzc:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2a

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "serialized size must be non-negative, was "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method zzaT(Lcom/google/android/gms/internal/ads/zzidu;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzaX()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzd(Lcom/google/android/gms/internal/ads/zzidu;)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2a

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "serialized size must be non-negative, was "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaQ()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaQ()I

    move-result p1

    return p1

    .line 3
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzd(Lcom/google/android/gms/internal/ads/zzidu;)I

    move-result p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaR(I)V

    return p1
.end method

.method zzaX()Z
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzibr;->zzc:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method zzaY()V
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzibr;->zzc:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzibr;->zzc:I

    return-void
.end method

.method zzaZ()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzw;->zzq:I

    return v0
.end method

.method zzba(I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhzw;->zzq:I

    return-void
.end method

.method zzbb()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzw;->zzq:I

    return-void
.end method

.method zzbc()Z
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzaZ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbd()Lcom/google/android/gms/internal/ads/zzidk;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzibq;->zzg:Lcom/google/android/gms/internal/ads/zzibq;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzibr;->zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzidk;

    return-object v0
.end method

.method public final zzbe()Lcom/google/android/gms/internal/ads/zzibr;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzibq;->zzf:Lcom/google/android/gms/internal/ads/zzibq;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzibr;->zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibr;

    return-object v0
.end method

.method public final zzbf()Lcom/google/android/gms/internal/ads/zzibl;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzibq;->zze:Lcom/google/android/gms/internal/ads/zzibq;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzibr;->zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibl;

    return-object v0
.end method

.method zzbg()Lcom/google/android/gms/internal/ads/zzibr;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzibq;->zzd:Lcom/google/android/gms/internal/ads/zzibq;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzibr;->zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibr;

    return-object v0
.end method

.method zzbh()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidm;->zza()Lcom/google/android/gms/internal/ads/zzidm;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzidm;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzidu;->zzc(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zzbi()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzg(Lcom/google/android/gms/internal/ads/zzibr;Z)Z

    move-result v0

    return v0
.end method

.method protected zzbm()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidm;->zza()Lcom/google/android/gms/internal/ads/zzidm;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzidm;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzidu;->zzk(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzaY()V

    return-void
.end method

.method protected final zzbn()Lcom/google/android/gms/internal/ads/zzibl;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzibq;->zze:Lcom/google/android/gms/internal/ads/zzibq;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzibr;->zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibl;

    return-object v0
.end method

.method public final zzbp()Lcom/google/android/gms/internal/ads/zzibl;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzibq;->zze:Lcom/google/android/gms/internal/ads/zzibq;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzibr;->zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibl;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbo(Lcom/google/android/gms/internal/ads/zzibr;)Lcom/google/android/gms/internal/ads/zzibl;

    return-object v0
.end method

.method zzbq()V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaR(I)V

    return-void
.end method

.method public zzbr()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaT(Lcom/google/android/gms/internal/ads/zzidu;)I

    move-result v0

    return v0
.end method

.method zzbs()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzibq;->zzc:Lcom/google/android/gms/internal/ads/zzibq;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzibr;->zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzbw()Lcom/google/android/gms/internal/ads/zzidc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbe()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    return-object v0
.end method

.method public zzcX(Lcom/google/android/gms/internal/ads/zziaw;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidm;->zza()Lcom/google/android/gms/internal/ads/zzidm;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzidm;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zziax;->zza(Lcom/google/android/gms/internal/ads/zziaw;)Lcom/google/android/gms/internal/ads/zziax;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzidu;->zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzieu;)V

    return-void
.end method

.method public bridge synthetic zzcY()Lcom/google/android/gms/internal/ads/zzidb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbf()Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method
