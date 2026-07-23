.class abstract Lcom/google/ads/interactivemedia/v3/internal/zzyt;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final zzg:Ljava/lang/String;

.field final zzh:Ljava/lang/reflect/Field;

.field final zzi:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyt;->zzg:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyt;->zzh:Ljava/lang/reflect/Field;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyt;->zzi:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzd(BLjava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzabb;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzq()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v0, p0

    new-instance p0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract zza(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V
.end method

.method abstract zzb(Lcom/google/ads/interactivemedia/v3/internal/zzabb;I[Ljava/lang/Object;)V
.end method

.method abstract zzc(Lcom/google/ads/interactivemedia/v3/internal/zzabb;Ljava/lang/Object;)V
.end method
