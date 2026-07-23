.class public final Lcom/google/ads/interactivemedia/v3/internal/zzzb;
.super Lcom/google/ads/interactivemedia/v3/internal/zzyy;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/zzyy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/ads/interactivemedia/v3/internal/zzux;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvj;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvb;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

.field private final zze:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

.field private final zzf:Lcom/google/ads/interactivemedia/v3/internal/zzyz;

.field private final zzg:Z

.field private volatile zzh:Lcom/google/ads/interactivemedia/v3/internal/zzvp;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzvj;Lcom/google/ads/interactivemedia/v3/internal/zzvb;Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;Lcom/google/ads/interactivemedia/v3/internal/zzvq;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyy;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzyz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzyz;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzzb;[B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzyz;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvj;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvb;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzux;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    iput-boolean p6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzg:Z

    return-void
.end method

.method public static zza(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzvq;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzb()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zza()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzza;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzza;-><init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;ZLjava/lang/Class;)V

    return-object v1
.end method

.method private final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzvp;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzux;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzvq;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvb;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;->read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzxn;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    move-result-object p1

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzg:Z

    if-eqz v1, :cond_1

    instance-of p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzve;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzb()Ljava/lang/reflect/Type;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvb;->zza()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvj;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;->write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzg:Z

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzm()Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzyz;

    .line 2
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzb()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0, p2, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzvj;->zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/internal/zzvi;)Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    move-result-object p2

    .line 3
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzV:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzyf;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzyf;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    return-void
.end method

.method public final zzb()Lcom/google/ads/interactivemedia/v3/internal/zzvp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvj;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzzb;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v0

    return-object v0
.end method
