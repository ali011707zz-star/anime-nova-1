.class public final Lcom/google/ads/interactivemedia/v3/internal/zzyj;
.super Lcom/google/ads/interactivemedia/v3/internal/zzabd;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zza:Ljava/io/Writer;

.field private static final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvh;


# instance fields
.field private final zzc:Ljava/util/List;

.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/ads/interactivemedia/v3/internal/zzvc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzyi;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyi;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zza:Ljava/io/Writer;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    const-string v1, "closed"

    .line 2
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zza:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzc:Ljava/util/List;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzve;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzve;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    return-void
.end method

.method private final zzv()Lcom/google/ads/interactivemedia/v3/internal/zzvc;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    return-object v0
.end method

.method private final zzw(Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzd:Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzve;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzu()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzv()Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvf;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzd:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvf;->zza(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzd:Ljava/lang/String;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzc:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    return-void

    .line 4
    :cond_3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzv()Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    move-result-object v0

    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzva;

    if-eqz v1, :cond_4

    .line 5
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzva;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzva;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    return-void

    .line 4
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 6
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    .line 2
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final flush()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzb()Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzva;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzva;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzc:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzd:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzv()Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    move-result-object v1

    instance-of v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzva;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final zzd()Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvf;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvf;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzc:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zze()Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzd:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzv()Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    move-result-object v1

    instance-of v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzvf;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 1

    .line 1
    const-string v0, "name == null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzc:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzd:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzv()Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    move-result-object v0

    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzvf;

    if-eqz v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzd:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Please begin an object before writing a name."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Did not expect a name"

    .line 3
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzve;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzve;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    return-object p0
.end method

.method public final zzh(Z)Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    return-object p0
.end method

.method public final zzi(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzve;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzve;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    return-object p0
.end method

.method public final zzj(D)Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzo()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x21

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    return-object p0
.end method

.method public final zzk(J)Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    return-object p0
.end method

.method public final zzl(Ljava/lang/Number;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzve;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzve;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    .line 4
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    return-object p0
.end method

.method public final zzm()Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzve;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzve;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyj;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V

    return-object p0
.end method
