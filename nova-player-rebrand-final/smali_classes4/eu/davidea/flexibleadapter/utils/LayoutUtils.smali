.class public abstract Leu/davidea/flexibleadapter/utils/LayoutUtils;
.super Ljava/lang/Object;
.source "LayoutUtils.java"


# direct methods
.method public static getClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 57
    const-string p0, "null"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getModeName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 47
    const-string p0, "IDLE"

    return-object p0

    .line 45
    :cond_0
    const-string p0, "MULTI"

    return-object p0

    .line 43
    :cond_1
    const-string p0, "SINGLE"

    return-object p0
.end method

.method public static getOrientation(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    .line 71
    new-instance v0, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;

    invoke-direct {v0, p0}, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;->getOrientation()I

    move-result p0

    return p0
.end method
