.class public final Lcom/google/ads/interactivemedia/v3/internal/zzaay;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field public static final zza:Z

.field public static final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

.field public static final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

.field public static final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzvq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "java.sql.Date"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/ads/interactivemedia/v3/internal/zzaay;->zza:Z

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzaaw;->$r8$clinit:I

    .line 3
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzaax;->$r8$clinit:I

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaar;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaay;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaat;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaay;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaav;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    :goto_1
    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaay;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaay;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaay;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    goto :goto_1
.end method
