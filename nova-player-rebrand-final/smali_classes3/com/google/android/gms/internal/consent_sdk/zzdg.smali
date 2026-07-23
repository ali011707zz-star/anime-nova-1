.class final Lcom/google/android/gms/internal/consent_sdk/zzdg;
.super Lcom/google/android/gms/internal/consent_sdk/zzdf;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/consent_sdk/zzdh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzdg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzdg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzdg;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdh;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "CharMatcher.none()"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzdf;-><init>(Ljava/lang/String;)V

    return-void
.end method
