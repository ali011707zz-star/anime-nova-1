.class public abstract Lcom/google/android/gms/internal/ads/zzhzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidc;


# instance fields
.field protected transient zzq:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzw;->zzq:I

    return-void
.end method

.method protected static zzaW(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhzv;->zzaT(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private zzdU(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v1, 0x12

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2c

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Serializing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to a "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public zzaM()Lcom/google/android/gms/internal/ads/zzian;
    .locals 4

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzidc;->zzbr()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    .line 2
    new-array v1, v0, [B

    .line 3
    sget v2, Lcom/google/android/gms/internal/ads/zziaw;->$r8$clinit:I

    .line 4
    new-instance v2, Lcom/google/android/gms/internal/ads/zziat;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zziat;-><init>([BII)V

    .line 5
    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/ads/zzidc;->zzcX(Lcom/google/android/gms/internal/ads/zziaw;)V

    .line 6
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zziaj;->zza(Lcom/google/android/gms/internal/ads/zziaw;[B)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    .line 7
    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzhzw;->zzdU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzaN()[B
    .locals 4

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzidc;->zzbr()I

    move-result v0

    new-array v1, v0, [B

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/zziaw;->$r8$clinit:I

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/zziat;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zziat;-><init>([BII)V

    .line 4
    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/ads/zzidc;->zzcX(Lcom/google/android/gms/internal/ads/zziaw;)V

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zziaw;->zzD()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    .line 6
    const-string v2, "byte array"

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzhzw;->zzdU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzaO(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzidc;->zzbr()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzz(I)I

    move-result v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zziav;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zziav;-><init>(Ljava/io/OutputStream;I)V

    .line 3
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/ads/zzidc;->zzcX(Lcom/google/android/gms/internal/ads/zziaw;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zziaw;->zzy()V

    return-void
.end method

.method abstract zzaQ()I
.end method

.method abstract zzaR(I)V
.end method

.method abstract zzaT(Lcom/google/android/gms/internal/ads/zzidu;)I
.end method

.method zzaU()Lcom/google/android/gms/internal/ads/zziee;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zziee;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zziee;-><init>(Lcom/google/android/gms/internal/ads/zzidc;)V

    return-object v0
.end method
