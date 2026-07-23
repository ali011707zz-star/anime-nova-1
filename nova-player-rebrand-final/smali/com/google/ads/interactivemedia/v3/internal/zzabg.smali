.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzabg;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzadx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/ads/interactivemedia/v3/internal/zzabg<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/ads/interactivemedia/v3/internal/zzabf<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/ads/interactivemedia/v3/internal/zzadx;"
    }
.end annotation


# instance fields
.field protected zza:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabg;->zza:I

    return-void
.end method


# virtual methods
.method public final zzaO()Lcom/google/ads/interactivemedia/v3/internal/zzabt;
    .locals 5

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzadx;->zzaB()I

    move-result v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    .line 2
    new-array v1, v0, [B

    .line 3
    sget v2, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->$r8$clinit:I

    .line 4
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzabx;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabx;-><init>([BII)V

    .line 5
    invoke-interface {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzadx;->zzaA(Lcom/google/ads/interactivemedia/v3/internal/zzabz;)V

    .line 6
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzy()V

    .line 7
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzabs;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x48

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Serializing "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a ByteString threw an IOException (should never happen)."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final zzaq()[B
    .locals 5

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzadx;->zzaB()I

    move-result v0

    new-array v1, v0, [B

    .line 2
    sget v2, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->$r8$clinit:I

    .line 3
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzabx;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabx;-><init>([BII)V

    .line 4
    invoke-interface {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzadx;->zzaA(Lcom/google/ads/interactivemedia/v3/internal/zzabz;)V

    .line 5
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x48

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Serializing "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a byte array threw an IOException (should never happen)."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method zzar(Lcom/google/ads/interactivemedia/v3/internal/zzaem;)I
    .locals 0

    .line 0
    const/4 p1, 0x0

    throw p1
.end method
