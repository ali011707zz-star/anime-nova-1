.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzlm;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:I

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/Object;

.field private final zzd:Ljava/lang/Object;


# direct methods
.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlm;->zza:I

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlm;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlm;->zzc:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlm;->zzd:Ljava/lang/Object;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzln;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzln;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)V

    return-void
.end method

.method public static zzf(ILjava/lang/String;II)Lcom/google/ads/interactivemedia/v3/internal/zzlm;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzli;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzli;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public static zzg(ILjava/lang/String;JJ)Lcom/google/ads/interactivemedia/v3/internal/zzlm;
    .locals 0

    .line 1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzlj;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzlj;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object p0
.end method

.method public static zzh(ILjava/lang/String;FF)Lcom/google/ads/interactivemedia/v3/internal/zzlm;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzlk;-><init>(ILjava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V

    return-object p0
.end method

.method public static zzi(ILjava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzlm;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzll;

    const/4 p1, 0x1

    .line 2
    const-string v0, "gads:sdk_core_constants:experiment_id"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzll;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzln;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzln;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)V

    return-object p0
.end method

.method public static zzj(ILjava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzlm;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzll;

    const/4 p1, 0x1

    .line 2
    const-string v0, "gads:sdk_core_constants_service:experiment_id"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzll;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzln;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzln;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)V

    return-object p0
.end method


# virtual methods
.method public abstract zza(Landroid/os/Bundle;)Ljava/lang/Object;
.end method

.method protected abstract zzb(Lorg/json/JSONObject;)Ljava/lang/Object;
.end method

.method protected abstract zzc(Landroid/content/SharedPreferences;)Ljava/lang/Object;
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlm;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlm;->zzd:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlm;->zzc:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzk()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlm;->zza:I

    return v0
.end method
