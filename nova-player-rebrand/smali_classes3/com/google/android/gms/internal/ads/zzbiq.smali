.class public abstract Lcom/google/android/gms/internal/ads/zzbiq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbio;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbio;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzbio;

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzbio;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "gads:afs:csa_send_tcf_data"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbiq;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbio;

    const-string v1, "gads:afs:csa_tcf_data_to_collect"

    const-string v2, "[{\"bk\":\"tcString\",\"sk\":\"IABTCF_TCString\",\"type\":0},{\"bk\":\"gdprApplies\",\"sk\":\"IABTCF_gdprApplies\",\"type\":1},{\"bk\":\"usPrivacy\",\"sk\":\"IABUSPrivacy_String\",\"type\":0}]"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbio;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbiq;->zzb:Lcom/google/android/gms/internal/ads/zzbio;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbio;

    const-string v1, "gads:afs:csa_webview_custom_domain_param_key"

    const-string v2, "csa_customDomain"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbio;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbiq;->zzc:Lcom/google/android/gms/internal/ads/zzbio;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbio;

    const-string v1, "gads:afs:csa_webview_static_file_path"

    const-string v2, "/afs/ads/i/webview.html"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbio;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbiq;->zzd:Lcom/google/android/gms/internal/ads/zzbio;

    return-void
.end method
