.class public final Lcom/google/ads/interactivemedia/v3/internal/zzpj;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpi;

.field private zzc:Lcom/google/ads/interactivemedia/v3/internal/zzpi;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzpi;

    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzpi;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzpj;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpi;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzpj;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzpi;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzpj;->zza:Ljava/lang/String;

    return-void
.end method

.method private final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzpi;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzpi;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpi;-><init>()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzpj;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzpi;

    iput-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zzpi;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzpi;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzpj;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzpi;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzpj;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzpj;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpi;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzpi;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzpi;

    const-string v2, ""

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zzpi;->zzb:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zzpi;->zza:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 6
    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    :goto_1
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzpi;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzpi;

    const-string v2, ", "

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpj;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzpj;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzpi;

    move-result-object p1

    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/zzpi;->zzb:Ljava/lang/Object;

    const-string p2, "consentKeyTypes"

    .line 2
    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/zzpi;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpj;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzpj;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzpi;

    move-result-object v0

    iput-object p1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzpi;->zzb:Ljava/lang/Object;

    return-object p0
.end method
