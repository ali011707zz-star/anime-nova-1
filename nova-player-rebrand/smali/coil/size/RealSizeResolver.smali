.class public final Lcoil/size/RealSizeResolver;
.super Ljava/lang/Object;
.source "RealSizeResolver.kt"

# interfaces
.implements Lcoil/size/SizeResolver;


# instance fields
.field private final size:Lcoil/size/Size;


# direct methods
.method public constructor <init>(Lcoil/size/Size;)V
    .locals 1

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/size/RealSizeResolver;->size:Lcoil/size/Size;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 8
    instance-of v0, p1, Lcoil/size/RealSizeResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcoil/size/RealSizeResolver;->size:Lcoil/size/Size;

    check-cast p1, Lcoil/size/RealSizeResolver;

    iget-object p1, p1, Lcoil/size/RealSizeResolver;->size:Lcoil/size/Size;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 11
    iget-object v0, p0, Lcoil/size/RealSizeResolver;->size:Lcoil/size/Size;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public size(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 5
    iget-object p1, p0, Lcoil/size/RealSizeResolver;->size:Lcoil/size/Size;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RealSizeResolver(size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/size/RealSizeResolver;->size:Lcoil/size/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
