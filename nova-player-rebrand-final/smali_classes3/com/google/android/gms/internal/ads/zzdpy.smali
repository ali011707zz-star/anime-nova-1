.class final synthetic Lcom/google/android/gms/internal/ads/zzdpy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzboh;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzdpy;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdpy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdpy;->zza:Lcom/google/android/gms/internal/ads/zzdpy;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjl;

    .line 1
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p2, "Show native ad policy validator overlay."

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzE()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
