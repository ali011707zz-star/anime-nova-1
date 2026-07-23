.class public abstract Lcom/google/android/gms/internal/ads/zzbgv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


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

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgv;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgv;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbgv;->zzc:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbgv;->zzd:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzb()Lcom/google/android/gms/internal/ads/zzbgw;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbgw;->zza(Lcom/google/android/gms/internal/ads/zzbgv;)V

    return-void
.end method

.method public static zzh(ILjava/lang/String;II)Lcom/google/android/gms/internal/ads/zzbgv;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbgr;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgr;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public static zzi(ILjava/lang/String;JJ)Lcom/google/android/gms/internal/ads/zzbgv;
    .locals 0

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbgs;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgs;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object p0
.end method

.method public static zzj(ILjava/lang/String;FF)Lcom/google/android/gms/internal/ads/zzbgv;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbgt;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgt;-><init>(ILjava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V

    return-object p0
.end method

.method public static zzk(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzbgv;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbgu;

    const/4 p1, 0x1

    .line 2
    const-string v0, "gads:sdk_core_constants:experiment_id"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbgu;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzb()Lcom/google/android/gms/internal/ads/zzbgw;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbgw;->zzb(Lcom/google/android/gms/internal/ads/zzbgv;)V

    return-object p0
.end method

.method public static zzl(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzbgv;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbgu;

    const/4 p1, 0x1

    .line 2
    const-string v0, "gads:sdk_core_constants_service:experiment_id"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbgu;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzb()Lcom/google/android/gms/internal/ads/zzbgw;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbgw;->zzc(Lcom/google/android/gms/internal/ads/zzbgv;)V

    return-object p0
.end method


# virtual methods
.method public abstract zza(Landroid/os/Bundle;)Ljava/lang/Object;
.end method

.method public abstract zzb(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
.end method

.method protected abstract zzc(Lorg/json/JSONObject;)Ljava/lang/Object;
.end method

.method protected abstract zzd(Landroid/content/SharedPreferences;)Ljava/lang/Object;
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgv;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgv;->zzd:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgv;->zzc:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzg()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzm()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgv;->zza:I

    return v0
.end method
