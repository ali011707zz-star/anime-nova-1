.class public abstract Lcom/google/android/gms/ads/internal/util/client/zzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/util/client/zzw;
    .locals 4

    .line 1
    const-string v0, "impression_prerequisite"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    const-string v2, "click_prerequisite"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 3
    const-string v3, "notification_flow_enabled"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    new-instance v1, Lcom/google/android/gms/ads/internal/util/client/zzm;

    invoke-direct {v1, v0, v2, p0}, Lcom/google/android/gms/ads/internal/util/client/zzm;-><init>(IIZ)V

    return-object v1
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()I
.end method

.method public abstract zzc()Z
.end method
