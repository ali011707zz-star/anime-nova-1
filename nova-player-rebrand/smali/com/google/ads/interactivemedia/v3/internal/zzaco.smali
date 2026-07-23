.class public Lcom/google/ads/interactivemedia/v3/internal/zzaco;
.super Lcom/google/ads/interactivemedia/v3/internal/zzabf;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/ads/interactivemedia/v3/internal/zzacs<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/ads/interactivemedia/v3/internal/zzaco<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/ads/interactivemedia/v3/internal/zzabf<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzacs;


# direct methods
.method protected constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzacs;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabf;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzas()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzau()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    .line 3
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaee;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zzb(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaem;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaem;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzaj()Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    move-result-object v0

    return-object v0
.end method

.method public final zzaP()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaN(Lcom/google/ads/interactivemedia/v3/internal/zzacs;Z)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic zzaf()Lcom/google/ads/interactivemedia/v3/internal/zzabf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzaj()Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    move-result-object v0

    return-object v0
.end method

.method protected final zzag()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzas()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzah()V

    :cond_0
    return-void
.end method

.method protected zzah()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzau()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    .line 2
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    return-void
.end method

.method public final zzaj()Lcom/google/ads/interactivemedia/v3/internal/zzaco;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzm(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzak()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    return-object v0
.end method

.method public zzak()Lcom/google/ads/interactivemedia/v3/internal/zzacs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzas()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaw()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    return-object v0
.end method

.method public final zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzak()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaP()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzaew;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaew;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzadx;)V

    .line 4
    throw v1
.end method

.method public final zzam(Lcom/google/ads/interactivemedia/v3/internal/zzacs;)Lcom/google/ads/interactivemedia/v3/internal/zzaco;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzas()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzah()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    .line 4
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public final zzan([BIILcom/google/ads/interactivemedia/v3/internal/zzace;)Lcom/google/ads/interactivemedia/v3/internal/zzaco;
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzas()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzah()V

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaee;

    move-result-object p2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zzb(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaem;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/zzabj;

    .line 5
    invoke-direct {v6, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzabj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzace;)V

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p3

    .line 6
    invoke-interface/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzaem;->zzj(Ljava/lang/Object;[BIILcom/google/ads/interactivemedia/v3/internal/zzabj;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzadd; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    .line 7
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 10
    :catch_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    const-string p2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 8
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzadd;-><init>(Ljava/lang/String;)V

    .line 9
    throw p1

    .line 10
    :goto_1
    throw p1
.end method

.method public bridge synthetic zzao()Lcom/google/ads/interactivemedia/v3/internal/zzadx;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzak()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object v0

    return-object v0
.end method
