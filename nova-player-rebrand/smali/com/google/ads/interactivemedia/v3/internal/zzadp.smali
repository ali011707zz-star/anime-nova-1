.class final Lcom/google/ads/interactivemedia/v3/internal/zzadp;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzaen;


# static fields
.field private static final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzadv;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzadv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzadn;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzadn;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzadp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzadv;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzado;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzacn;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzacn;

    move-result-object v1

    sget v2, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->$r8$clinit:I

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/ads/interactivemedia/v3/internal/zzadv;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzadp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzadv;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzado;-><init>([Lcom/google/ads/interactivemedia/v3/internal/zzadv;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzadb;->zzb:[B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadv;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaem;
    .locals 8

    .line 1
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzaeo;->$r8$clinit:I

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->$r8$clinit:I

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadv;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzadv;->zzc(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzadu;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->$r8$clinit:I

    .line 6
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaed;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaec;

    move-result-object v3

    .line 7
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzadl;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzadk;

    move-result-object v4

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaeo;->zzB()Lcom/google/ads/interactivemedia/v3/internal/zzaex;

    move-result-object v5

    .line 8
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzc()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 9
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzach;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 10
    :goto_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzadt;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzads;

    move-result-object v7

    move-object v1, p1

    .line 11
    invoke-static/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zzaea;->zzm(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzadu;Lcom/google/ads/interactivemedia/v3/internal/zzaec;Lcom/google/ads/interactivemedia/v3/internal/zzadk;Lcom/google/ads/interactivemedia/v3/internal/zzaex;Lcom/google/ads/interactivemedia/v3/internal/zzacf;Lcom/google/ads/interactivemedia/v3/internal/zzads;)Lcom/google/ads/interactivemedia/v3/internal/zzaea;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    sget p1, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->$r8$clinit:I

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaeo;->zzB()Lcom/google/ads/interactivemedia/v3/internal/zzaex;

    move-result-object p1

    .line 13
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzach;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    move-result-object v0

    .line 14
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaeb;->zzh(Lcom/google/ads/interactivemedia/v3/internal/zzaex;Lcom/google/ads/interactivemedia/v3/internal/zzacf;Lcom/google/ads/interactivemedia/v3/internal/zzadx;)Lcom/google/ads/interactivemedia/v3/internal/zzaeb;

    move-result-object p1

    return-object p1
.end method
